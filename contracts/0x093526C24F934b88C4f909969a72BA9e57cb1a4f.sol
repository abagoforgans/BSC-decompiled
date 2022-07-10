contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address stor3;
mapping of struct sub_78a01862;
mapping of uint256 sub_04d7b15a;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 sub_891d1eb0;
mapping of uint256 sub_757b8c93;
mapping of uint8 stor11;
uint256 stor12;
uint256 totalVesting;
uint256 stor14;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;
address tokenAddress; offset 8

function invest(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function sub_04d7b15a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_04d7b15a[arg1]
}

function sub_17227c87(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function sub_757b8c93(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_757b8c93[arg1]
}

function sub_78a01862(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_78a01862[arg1].field_0, sub_78a01862[arg1].field_256, sub_78a01862[arg1].field_512, sub_78a01862[arg1].field_768
}

function totalVesting() {
    return totalVesting
}

function sub_891d1eb0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_891d1eb0[arg1]
}

function owner() {
    return owner
}

function vesting(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_eefa487e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_63e0b780(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function removeInvestor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function startGame(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor15.field_0) = uint8(arg1)
    stor14 = block.timestamp
}

function sub_c342baa8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, bool(arg1))
    stor14 = block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getLatestPrice() {
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_9f9a22bc(?) {
    if not uint8(stor15.field_0):
        revert with 0, 'El juego aun no inicia'
    if sub_78a01862[address(msg.sender)].field_256 > -2:
        revert with 'NH{q', 17
    if sub_78a01862[address(msg.sender)].field_768 <= 0:
        revert with 0, 'No se tiene balance'
    sub_78a01862[address(msg.sender)].field_256++
    if sub_78a01862[address(msg.sender)].field_256 + 1 and 168 * 24 * 3600 > -1 / sub_78a01862[address(msg.sender)].field_256 + 1:
        revert with 'NH{q', 17
    if stor14 > (-604800 * sub_78a01862[address(msg.sender)].field_256) - 604801:
        revert with 'NH{q', 17
    if block.timestamp <= stor14 + (168 * 24 * 3600 * sub_78a01862[address(msg.sender)].field_256) + (168 * 24 * 3600):
        revert with 0, 'Aun no puedes retirar tu dinero'
    if sub_78a01862[address(msg.sender)].field_512 < 1:
        revert with 'NH{q', 17
    if sub_78a01862[address(msg.sender)].field_768 <= sub_78a01862[address(msg.sender)].field_512 - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No tienes la cantidad minima para retiro'
    if sub_78a01862[address(msg.sender)].field_768 < sub_78a01862[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    sub_78a01862[address(msg.sender)].field_768 -= sub_78a01862[address(msg.sender)].field_512
    if totalVesting < sub_78a01862[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    totalVesting -= sub_78a01862[address(msg.sender)].field_512
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_78a01862[address(msg.sender)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x61a0d4e4: msg.sender, sub_78a01862[address(msg.sender)].field_512, sub_78a01862[address(msg.sender)].field_768
    return 1
}

function sub_01705647(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor8[address(msg.sender)]:
        revert with 0, 'No puedes usar esta funcion'
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if msg.value and ext_call.return_data[32] > -1 / msg.value:
        revert with 'NH{q', 17
    if stor18 and 10^6 > -1 / stor18:
        revert with 'NH{q', 17
    if not 10^6 * stor18:
        revert with 'NH{q', 18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < msg.value * ext_call.return_data[32] / 10^6 * stor18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (msg.value * ext_call.return_data[32] / 10^6 * stor18) <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    if msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10 and 5 > -1 / msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10:
        revert with 'NH{q', 17
    sub_78a01862[address(msg.sender)].field_0 = msg.value * ext_call.return_data[32] / 10^6 * stor18
    sub_78a01862[address(msg.sender)].field_256 = 0
    sub_78a01862[address(msg.sender)].field_512 = msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10
    if msg.value * ext_call.return_data[32] / 10^6 * stor18 < 5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10:
        revert with 'NH{q', 17
    sub_78a01862[address(msg.sender)].field_768 = (msg.value * ext_call.return_data[32] / 10^6 * stor18) - (5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10)
    if totalVesting > -(msg.value * ext_call.return_data[32] / 10^6 * stor18) - 1:
        revert with 'NH{q', 17
    if totalVesting + (msg.value * ext_call.return_data[32] / 10^6 * stor18) < 5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10:
        revert with 'NH{q', 17
    totalVesting = totalVesting + (msg.value * ext_call.return_data[32] / 10^6 * stor18) - (5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10)
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value * ext_call.return_data[32] / 10^6 * stor18 < 5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10:
        revert with 'NH{q', 17
    emit 0xe833ae37: msg.sender, msg.value * ext_call.return_data[32] / 10^6 * stor18, (msg.value * ext_call.return_data[32] / 10^6 * stor18) - (5 * msg.value * ext_call.return_data[32] / 10^6 * stor18 / 10)
    stor1 = 1
    return 1
}

function buyIDO() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor15.field_8):
        revert with 0, 'La IDO no inicia todavia'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'El balance del token del contrato es igual a 0'
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if msg.value and ext_call.return_data[32] > -1 / msg.value:
        revert with 'NH{q', 17
    if stor19 and 10^6 > -1 / stor19:
        revert with 'NH{q', 17
    if not 10^6 * stor19:
        revert with 'NH{q', 18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < msg.value * ext_call.return_data[32] / 10^6 * stor19:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (msg.value * ext_call.return_data[32] / 10^6 * stor19) <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    if stor20 and 10^16 > -1 / stor20:
        revert with 'NH{q', 17
    if 10^16 * stor20 <= msg.value:
        revert with 0, 'No puedes comprar mas TAG'
    if stor20 and 10^16 > -1 / stor20:
        revert with 'NH{q', 17
    if sub_757b8c93[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    if sub_757b8c93[address(msg.sender)] + msg.value >= 10^16 * stor20:
        revert with 0, 'No puedes comprar mas TAG'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= msg.value * ext_call.return_data[32] / 10^6 * stor19:
        revert with 0, 'No existe esa cantidad para comprar'
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_757b8c93[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_757b8c93[address(msg.sender)] += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * ext_call.return_data[32] / 10^6 * stor19 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value * ext_call.return_data[32] / 10^6 * stor19 < msg.value * ext_call.return_data[32] / 10^6 * stor19 / 2:
        revert with 'NH{q', 17
    emit 0x1e445322: msg.sender, (msg.value * ext_call.return_data[32] / 10^6 * stor19) - (msg.value * ext_call.return_data[32] / 10^6 * stor19 / 2)
    stor1 = 1
    return 1
}

function sub_e37b24cb(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'El balance del token del contrato es igual a 0'
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if msg.value and ext_call.return_data[32] > -1 / msg.value:
        revert with 'NH{q', 17
    if stor16 and 10^6 > -1 / stor16:
        revert with 'NH{q', 17
    if not 10^6 * stor16:
        revert with 'NH{q', 18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < msg.value * ext_call.return_data[32] / 10^6 * stor16:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (msg.value * ext_call.return_data[32] / 10^6 * stor16) <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    if stor17 and 10^16 > -1 / stor17:
        revert with 'NH{q', 17
    if 10^16 * stor17 <= msg.value:
        revert with 0, 'No puedes comprar mas TAG'
    if stor17 and 10^16 > -1 / stor17:
        revert with 'NH{q', 17
    if sub_891d1eb0[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    if sub_891d1eb0[address(msg.sender)] + msg.value >= 10^16 * stor17:
        revert with 0, 'No puedes comprar mas TAG'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= msg.value * ext_call.return_data[32] / 10^6 * stor16:
        revert with 0, 'No existe esa cantidad para comprar'
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor6[address(msg.sender)]:
        if not stor7[address(msg.sender)]:
            revert with 0, 'No estas en la whitelist'
        if sub_891d1eb0[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        sub_891d1eb0[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * ext_call.return_data[32] / 10^6 * stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_891d1eb0[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        sub_891d1eb0[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * ext_call.return_data[32] / 10^6 * stor16 / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if msg.value * ext_call.return_data[32] / 10^6 * stor16 < msg.value * ext_call.return_data[32] / 10^6 * stor16 / 2:
            revert with 'NH{q', 17
        emit 0xdc732744: msg.sender, (msg.value * ext_call.return_data[32] / 10^6 * stor16) - (msg.value * ext_call.return_data[32] / 10^6 * stor16 / 2)
    if stor12 > -msg.value - 1:
        revert with 'NH{q', 17
    stor12 += msg.value
    emit Buy(msg.sender, msg.value);
    stor1 = 1
    return 1
}

function sub_3fded452(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Esta funcion solo puede usarse una vez'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 187500 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 187500 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0x9ccfb722c794c3101b8cd18ed888f0620886415c].field_0 = 187500 * 10^18
    sub_78a01862[0x9ccfb722c794c3101b8cd18ed888f0620886415c].field_256 = 0
    sub_78a01862[0x9ccfb722c794c3101b8cd18ed888f0620886415c].field_512 = 18750 * 10^18
    sub_78a01862[0x9ccfb722c794c3101b8cd18ed888f0620886415c].field_768 = 93750 * 10^18
    if totalVesting > 0xffffffffffffffffffffffffffffffffffffffffffffd84b9ac9399371cfffff:
        revert with 'NH{q', 17
    if totalVesting + 187500 * 10^18 < 93750 * 10^18:
        revert with 'NH{q', 17
    totalVesting += 93750 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x9ccfb722c794c3101b8cd18ed888f0620886415c, 93750 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0x9ccfb722c794c3101b8cd18ed888f0620886415c, 187500 * 10^18, 93750 * 10^18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 15500 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 15500 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0x8410b3f6cba32c2d69696a2dc33b514d98957676].field_0 = 15500 * 10^18
    sub_78a01862[0x8410b3f6cba32c2d69696a2dc33b514d98957676].field_256 = 0
    sub_78a01862[0x8410b3f6cba32c2d69696a2dc33b514d98957676].field_512 = 1550 * 10^18
    sub_78a01862[0x8410b3f6cba32c2d69696a2dc33b514d98957676].field_768 = 7750 * 10^18
    if totalVesting > 0xfffffffffffffffffffffffffffffffffffffffffffffcb7be49fa85054fffff:
        revert with 'NH{q', 17
    if totalVesting + 15500 * 10^18 < 7750 * 10^18:
        revert with 'NH{q', 17
    totalVesting += 7750 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8410b3f6cba32c2d69696a2dc33b514d98957676, 7750 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0x8410b3f6cba32c2d69696a2dc33b514d98957676, 15500 * 10^18, 7750 * 10^18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10000 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 10000 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0xebef318b1b9560fcd17e13da56e43e959541b887].field_0 = 10000 * 10^18
    sub_78a01862[0xebef318b1b9560fcd17e13da56e43e959541b887].field_256 = 0
    sub_78a01862[0xebef318b1b9560fcd17e13da56e43e959541b887].field_512 = 1000 * 10^18
    sub_78a01862[0xebef318b1b9560fcd17e13da56e43e959541b887].field_768 = 5000 * 10^18
    if totalVesting > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
        revert with 'NH{q', 17
    if totalVesting + 10000 * 10^18 < 5000 * 10^18:
        revert with 'NH{q', 17
    totalVesting += 5000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xebef318b1b9560fcd17e13da56e43e959541b887, 5000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0xebef318b1b9560fcd17e13da56e43e959541b887, 10000 * 10^18, 5000 * 10^18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10000 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 10000 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0x166d867f48bbea9afe5db6583780aba664dab22e].field_0 = 10000 * 10^18
    sub_78a01862[0x166d867f48bbea9afe5db6583780aba664dab22e].field_256 = 0
    sub_78a01862[0x166d867f48bbea9afe5db6583780aba664dab22e].field_512 = 1000 * 10^18
    sub_78a01862[0x166d867f48bbea9afe5db6583780aba664dab22e].field_768 = 5000 * 10^18
    if totalVesting > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
        revert with 'NH{q', 17
    if totalVesting + 10000 * 10^18 < 5000 * 10^18:
        revert with 'NH{q', 17
    totalVesting += 5000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x166d867f48bbea9afe5db6583780aba664dab22e, 5000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0x166d867f48bbea9afe5db6583780aba664dab22e, 10000 * 10^18, 5000 * 10^18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10000 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 10000 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0x4a42331bd1f963a80e91fe1f98d88218eb673ff6].field_0 = 10000 * 10^18
    sub_78a01862[0x4a42331bd1f963a80e91fe1f98d88218eb673ff6].field_256 = 0
    sub_78a01862[0x4a42331bd1f963a80e91fe1f98d88218eb673ff6].field_512 = 1000 * 10^18
    sub_78a01862[0x4a42331bd1f963a80e91fe1f98d88218eb673ff6].field_768 = 5000 * 10^18
    if totalVesting > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
        revert with 'NH{q', 17
    if totalVesting + 10000 * 10^18 < 5000 * 10^18:
        revert with 'NH{q', 17
    totalVesting += 5000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x4a42331bd1f963a80e91fe1f98d88218eb673ff6, 5000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0x4a42331bd1f963a80e91fe1f98d88218eb673ff6, 10000 * 10^18, 5000 * 10^18
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 15025 * 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - 15025 * 10^18 <= totalVesting:
        revert with 0, 'Solo existen la cantidad de tokens para vesting'
    sub_78a01862[0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159].field_0 = 15025 * 10^18
    sub_78a01862[0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159].field_256 = 0
    sub_78a01862[0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159].field_512 = 15025 * 10^17
    sub_78a01862[0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159].field_768 = 75125 * 10^17
    if totalVesting > 0xfffffffffffffffffffffffffffffffffffffffffffffcd17e3cf9dc9bdbffff:
        revert with 'NH{q', 17
    if totalVesting + 15025 * 10^18 < 75125 * 10^17:
        revert with 'NH{q', 17
    totalVesting += 75125 * 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159, 75125 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x594e8e71: 0xd2d35c1caf760b7e30c4d2e680ac3a08fbdaf159, 15025 * 10^18, 75125 * 10^17
    stor21 = 0
}



}
