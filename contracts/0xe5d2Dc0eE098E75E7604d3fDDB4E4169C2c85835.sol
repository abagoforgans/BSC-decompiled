contract main {




// =====================  Runtime code  =====================


const PERIOD = (24 * 3600)


mapping of uint8 stor0;
address owner;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address operatorAddress;
uint256 startTime;
uint256 epoch;
address stor5;
address stor6;
address stor7;
uint32 stor8;
address stor8;
uint256 stor8;
address stor9;
uint256 cashPriceOne;
uint256 cashPriceCeiling;
uint256 stor12;
uint256 reserve;

function cashPriceCeiling() payable {
    return cashPriceCeiling
}

function isInitialized() payable {
    return bool(uint8(stor2.field_168))
}

function operator() payable {
    return operatorAddress
}

function getReserve() payable {
    return reserve
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function epoch() payable {
    return epoch
}

function cashPriceOne() payable {
    return cashPriceOne
}

function isMigrated() payable {
    return bool(uint8(stor2.field_160))
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x656f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function getCashPrice() payable {
    require ext_code.size(stor9)
    staticcall stor9.0x3ddac953 with:
            gas gas_remaining wei
           args stor5, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7754726561737572793a206661696c656420746f20636f6e73756c7420636173682070726963652066726f6d20746865206f7261636c,
                    mem[218 len 10]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextEpochPoint() payable {
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    require epoch
    if 24 * 3600 * epoch / epoch != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if startTime + (24 * 3600 * epoch) < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (startTime + (24 * 3600 * epoch))
}

function initialize() payable {
    if uint8(stor2.field_168):
        revert with 0, 'Treasury: already initialized'
    require ext_code.size(stor5)
    staticcall stor5.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor6)
    staticcall stor6.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor7)
    staticcall stor7.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), 1001 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserve = ext_call.return_data[0]
    Mask(88, 0, stor2.field_168) = 1
    emit Initialized(block.number, msg.sender);
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(stor5)
    staticcall stor5.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor6)
    staticcall stor6.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor7)
    staticcall stor7.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if uint8(stor2.field_160):
        revert with 0, 'Treasury: migrated'
    require ext_code.size(stor5)
    call stor5.0x29605e77 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x29605e77 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.0x29605e77 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(96, 0, stor2.field_160) = 1
    emit Migration(arg1);
}

function buyBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if uint8(stor2.field_160):
        revert with 0, 'Treasury: migrated'
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(stor5)
    staticcall stor5.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor6)
    staticcall stor6.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor7)
    staticcall stor7.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6554726561737572793a2063616e6e6f7420707572636861736520626f6e64732077697468207a65726f20616d6f756e,
                    mem[212 len 16]
    require ext_code.size(stor9)
    staticcall stor9.0x3ddac953 with:
            gas gas_remaining wei
           args stor5, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7754726561737572793a206661696c656420746f20636f6e73756c7420636173682070726963652066726f6d20746865206f7261636c,
                    mem[218 len 10]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg2:
        revert with 0, 'Treasury: cash price moved'
    if ext_call.return_data[0] >= cashPriceOne:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x7454726561737572793a20636173685072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[214 len 14]
    require ext_code.size(stor5)
    call stor5.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor6)
        call stor6.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor6)
        call stor6.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * arg1 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    call stor9.0xa2e62045 with:
         gas gas_remaining wei
    emit BoughtBonds(arg1, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][address(msg.sender)] = 1
}

function redeemBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if uint8(stor2.field_160):
        revert with 0, 'Treasury: migrated'
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(stor5)
    staticcall stor5.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor6)
    staticcall stor6.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(stor7)
    staticcall stor7.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(address(stor8))
    staticcall address(stor8).0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7354726561737572793a2063616e6e6f742072656465656d20626f6e64732077697468207a65726f20616d6f756e,
                    mem[210 len 18]
    require ext_code.size(stor9)
    staticcall stor9.0x3ddac953 with:
            gas gas_remaining wei
           args stor5, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7754726561737572793a206661696c656420746f20636f6e73756c7420636173682070726963652066726f6d20746865206f7261636c,
                    mem[218 len 10]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg2:
        revert with 0, 'Treasury: cash price moved'
    if ext_call.return_data[0] <= cashPriceCeiling:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x7454726561737572793a20636173685072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[214 len 14]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7254726561737572793a20747265617375727920686173206e6f206d6f7265206275646765,
                    mem[201 len 27]
    if reserve >= arg1:
        if arg1 > reserve:
            revert with 0, 'SafeMath: subtraction overflow'
        reserve -= arg1
        require ext_code.size(stor6)
        call stor6.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_code.size(stor5) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    else:
        if reserve > reserve:
            revert with 0, 'SafeMath: subtraction overflow'
        reserve = 0
        require ext_code.size(stor6)
        call stor6.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_code.size(stor5) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[388 len 0] = 0
    call stor5 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    require ext_code.size(stor9)
    call stor9.0xa2e62045 with:
         gas gas_remaining wei
    emit RedeemedBonds(arg1, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][address(msg.sender)] = 1
}

function allocateSeigniorage() payable {
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if uint8(stor2.field_160):
        revert with 0, 'Treasury: migrated'
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime:
            revert with 0, 'Treasury: not opened yet'
        require ext_code.size(stor5)
        staticcall stor5.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor6)
        staticcall stor6.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor7)
        staticcall stor7.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(address(stor8))
        staticcall address(stor8).0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor9)
        call stor9.0xa2e62045 with:
             gas gas_remaining wei
        require ext_code.size(stor9)
        staticcall stor9.0x3ddac953 with:
                gas gas_remaining wei
               args stor5, 10^18
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x7754726561737572793a206661696c656420746f20636f6e73756c7420636173682070726963652066726f6d20746865206f7261636c,
                        mem[218 len 10]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cashPriceCeiling:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x6554726561737572793a207468657265206973206e6f20736569676e696f7261676520746f20626520616c6c6f63617465,
                        mem[213 len 15]
        require ext_code.size(stor5)
        staticcall stor5.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if reserve > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if cashPriceOne > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - reserve:
            if reserve <= stor12:
                if reserve < reserve:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stor5)
                call stor5.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TreasuryFunded(block.timestamp, 0);
            else:
                require ext_code.size(stor5)
                call stor5.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_code.size(stor5) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                mem[516 len 0] = 0
                call stor5 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                require ext_code.size(address(stor8))
                call address(stor8).0x97ffe1d7 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BoardroomFunded(block.timestamp, 0);
        else:
            require ext_call.return_data[0] - reserve
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / ext_call.return_data[0] - reserve != ext_call.return_data[0] - cashPriceOne:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if reserve <= stor12:
                if reserve + ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) < reserve:
                    revert with 0, 'SafeMath: addition overflow'
                reserve += (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                require ext_code.size(stor5)
                call stor5.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TreasuryFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
            else:
                require ext_code.size(stor5)
                call stor5.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18:
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) >> 32
                    mem[516 len 0] = 0
                else:
                    require ext_code.size(stor5)
                    staticcall stor5.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor8)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[410 len 10]
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) >> 32
                call stor5 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                require ext_code.size(address(stor8))
                call address(stor8).0x97ffe1d7 with:
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BoardroomFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
    else:
        require epoch
        if 24 * 3600 * epoch / epoch != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if startTime + (24 * 3600 * epoch) < startTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < startTime + (24 * 3600 * epoch):
            revert with 0, 'Treasury: not opened yet'
        require ext_code.size(stor5)
        staticcall stor5.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor6)
        staticcall stor6.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor7)
        staticcall stor7.0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(address(stor8))
        staticcall address(stor8).0x570ca735 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'Treasury: need more permission'
        require ext_code.size(stor9)
        call stor9.0xa2e62045 with:
             gas gas_remaining wei
        require ext_code.size(stor9)
        staticcall stor9.0x3ddac953 with:
                gas gas_remaining wei
               args stor5, 10^18
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x7754726561737572793a206661696c656420746f20636f6e73756c7420636173682070726963652066726f6d20746865206f7261636c,
                        mem[218 len 10]
        require return_data.size >= 32
        if ext_call.return_data[0] <= cashPriceCeiling:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x6554726561737572793a207468657265206973206e6f20736569676e696f7261676520746f20626520616c6c6f63617465,
                        mem[213 len 15]
        require ext_code.size(stor5)
        staticcall stor5.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if reserve > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if cashPriceOne > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.success:
            if not ext_call.return_data[0] - reserve:
                if reserve <= stor12:
                    if reserve < reserve:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TreasuryFunded(block.timestamp, 0);
                else:
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    call stor5 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor8))
                    call address(stor8).0x97ffe1d7 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BoardroomFunded(block.timestamp, 0);
            else:
                require ext_call.return_data[0] - reserve
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / ext_call.return_data[0] - reserve != ext_call.return_data[0] - cashPriceOne:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if reserve <= stor12:
                    if reserve + ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) < reserve:
                        revert with 0, 'SafeMath: addition overflow'
                    reserve += (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TreasuryFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
                else:
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18:
                        require ext_code.size(stor5)
                        staticcall stor5.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(stor8)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[410 len 10]
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) >> 32
                    call stor5 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor8))
                    call address(stor8).0x97ffe1d7 with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BoardroomFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
        else:
            if not ext_call.return_data[0] - reserve:
                if reserve <= stor12:
                    if reserve < reserve:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TreasuryFunded(block.timestamp, 0);
                else:
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    mem[516 len 0] = 0
                    call stor5 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor8))
                    call address(stor8).0x97ffe1d7 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BoardroomFunded(block.timestamp, 0);
            else:
                require ext_call.return_data[0] - reserve
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / ext_call.return_data[0] - reserve != ext_call.return_data[0] - cashPriceOne:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if reserve <= stor12:
                    if reserve + ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) < reserve:
                        revert with 0, 'SafeMath: addition overflow'
                    reserve += (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TreasuryFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
                else:
                    require ext_code.size(stor5)
                    call stor5.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18:
                        require ext_code.size(stor5)
                        staticcall stor5.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(stor8)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[410 len 10]
                    if ext_code.size(stor5) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) >> 32
                    call stor5 with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor8))
                    call address(stor8).0x97ffe1d7 with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit BoardroomFunded(block.timestamp, (ext_call.return_data[0] * ext_call.return_data[0]) - (cashPriceOne * ext_call.return_data[0]) - (ext_call.return_data[0] * reserve) + (cashPriceOne * reserve) / 10^18);
    if epoch + 1 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    epoch++
    stor0[block.number][tx.origin] = 1
    stor0[block.number][address(msg.sender)] = 1
}



}
