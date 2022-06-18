contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
address sub_6e64a873Address;
mapping of uint8 stor2;
array of address pATH_BNB_TOKEN;
array of address pATH_TOKEN_BNB;
address stor11;
uint8 stor12; offset 160
address buyContractAddress;
address battleContractAddress;
address sub_32d4ff6eAddress;
address marketContractAddress;
address nftContractAddress;
address tokenContractAddress;
address bnbContractAddress;
address swapContractAddress;
address workContractAddress;
address eneryContractAddress;

function BnbContract() {
    return bnbContractAddress
}

function sub_32d4ff6e(?) {
    return sub_32d4ff6eAddress
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_6e64a873(?) {
    return sub_6e64a873Address
}

function TokenContract() {
    return tokenContractAddress
}

function PATH_TOKEN_BNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_TOKEN_BNB.length
    return pATH_TOKEN_BNB[arg1]
}

function BuyContract() {
    return buyContractAddress
}

function PATH_BNB_TOKEN(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_BNB_TOKEN.length
    return pATH_BNB_TOKEN[arg1]
}

function WorkContract() {
    return workContractAddress
}

function EneryContract() {
    return eneryContractAddress
}

function BattleContract() {
    return battleContractAddress
}

function SwapContract() {
    return swapContractAddress
}

function NftContract() {
    return nftContractAddress
}

function admin() {
    return address(adminAddress)
}

function MarketContract() {
    return marketContractAddress
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function hatch(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0, 'not admin'
}

function setBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    buyContractAddress = arg1
}

function setBattle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    battleContractAddress = arg1
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    address(adminAddress) = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    stor2[address(arg1)] = 1
}

function withdraw() {
    require msg.sender == address(adminAddress)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if not stor2[msg.sender]:
        revert with 0, 'not admin'
    require ext_code.size(sub_32d4ff6eAddress)
    call sub_32d4ff6eAddress.0x4e71d92d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_ff958aa8(?) {
    require calldata.size - 4 >= 224
    require 100 <= calldata.size
    require arg1 == uint8(arg1)
    if not stor2[msg.sender]:
        revert with 0, 'not admin'
    require ext_code.size(battleContractAddress)
    call battleContractAddress.0x27a5425f with:
         gas gas_remaining wei
        args 0, 0, call.data[4 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function callNftTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(adminAddress) != msg.sender:
        if not stor12:
            revert with 0, 'no admin'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function nftTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(adminAddress) != msg.sender:
        if not stor12:
            revert with 0, 'no admin'
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        require stor12
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initAdmin() {
    if address(adminAddress) != msg.sender:
        revert with 0, 'not proxy admin'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor2[address(msg.sender)] = 1
    tokenContractAddress = 0xbf37f781473f3b50e82c668352984865eac9853f
    battleContractAddress = 0x8253a7cec5733e09ac0b127096a64cfcb4c45136
    sub_32d4ff6eAddress = 0x2c12ff0c6f521ae27af250d44c33e74ddfee26a3
    require ext_code.size(0xbf37f781473f3b50e82c668352984865eac9853f)
    call 0xbf37f781473f3b50e82c668352984865eac9853f.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x8253a7cec5733e09ac0b127096a64cfcb4c45136, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferLimit() {
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = 12000 * 10^18
    mem[132] = 64
    mem[164] = pATH_BNB_TOKEN.length
    mem[0] = 6
    idx = 0
    s = 196
    t = 0
    while idx < pATH_BNB_TOKEN.length:
        mem[s] = pATH_BNB_TOKEN[t]
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    require ext_code.size(stor11)
    staticcall stor11.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 12000 * 10^18, 64, pATH_BNB_TOKEN.length, mem[196 len 32 * pATH_BNB_TOKEN.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], 2793967723846
    require mem[96 len 4], 2793967723846 <= test266151307()
    require mem[96 len 4], 2793967723846 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], 2793967723846 + 96]
    require mem[mem[96 len 4], 2793967723846 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _18
    require return_data.size >= _17 + (32 * _18) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _18] = mem[_17 + 128 len 32 * _18]
    require 0 < _18
    if 100 * mem[ceil32(return_data.size) + 128] / 100 != mem[ceil32(return_data.size) + 128]:
        revert with 0, 'ds-math-mul-overflow'
    mem[mem[64]] = 100 * mem[ceil32(return_data.size) + 128] / 90
    return memory
      from mem[64]
       len 32
}

function sub_96d6bba8(?) {
    require calldata.size - 4 >= 224
    require 100 <= calldata.size
    require arg1 == uint8(arg1)
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'not admin'
    mem[96] = 0x69a69e2900000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(sub_32d4ff6eAddress)
    staticcall sub_32d4ff6eAddress.getUnclaimedRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _8 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _8
    require return_data.size >= _7 + (32 * _8) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _8] = mem[_7 + 128 len 32 * _8]
    mem[mem[64] + 36 len 96] = call.data[4 len 96]
    mem[mem[64] + 132] = 0
    require ext_code.size(battleContractAddress)
    call battleContractAddress.0x27a5425f with:
         gas gas_remaining wei
        args arg1 << 248, call.data[4 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = 0x69a69e2900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_32d4ff6eAddress)
    staticcall sub_32d4ff6eAddress.getUnclaimedRewards(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _61 = mem[_60]
    require mem[_60] <= test266151307()
    require _60 + mem[_60] + 31 < _60 + return_data.size
    _62 = mem[_60 + mem[_60]]
    require mem[_60 + mem[_60]] <= test266151307()
    require _60 + ceil32(return_data.size) + (32 * mem[_60 + mem[_60]]) + 32 <= test266151307() and (32 * mem[_60 + mem[_60]]) + 32 >= 0
    mem[64] = _60 + ceil32(return_data.size) + (32 * mem[_60 + mem[_60]]) + 32
    mem[_60 + ceil32(return_data.size)] = _62
    require return_data.size >= _61 + (32 * _62) + 32
    mem[_60 + ceil32(return_data.size) + 32 len 32 * _62] = mem[_60 + _61 + 32 len 32 * _62]
    if 0 == _8:
        require 0 < _62
        if mem[_60 + ceil32(return_data.size) + 32] <= arg2:
            revert with 0, 'low milk'
        require 1 < _62
        if mem[_60 + ceil32(return_data.size) + 64] <= arg3:
            revert with 0, 'low baby'
        require 2 < _62
        if mem[_60 + ceil32(return_data.size) + 96] <= arg4:
            revert with 0, 'low key'
    else:
        require 0 < _8
        require 0 < _62
        if mem[_60 + ceil32(return_data.size) + 32] - mem[ceil32(return_data.size) + 128] <= arg2:
            revert with 0, 'low milk'
        require 1 < _8
        require 1 < _62
        if mem[_60 + ceil32(return_data.size) + 64] - mem[ceil32(return_data.size) + 160] <= arg3:
            revert with 0, 'low baby'
        require 2 < _8
        require 2 < _62
        if mem[_60 + ceil32(return_data.size) + 96] - mem[ceil32(return_data.size) + 192] <= arg4:
            revert with 0, 'low key'
}



}
