contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a4c1e1c(?)
#  - sub_540698ec(?)
#  - activate(uint256 arg1)
#
const multiplier = 2

const sub_2686b6a7(?) = 18446744073709551616

const sub_935c0b9c(?) = (1440 * 24 * 3600)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_3b9e5f5aAddress;
address sub_b42e7e7cAddress;
uint256 sub_0baa7f53;
uint256 sub_1587d5b0;
address stakeTokenAddress;
address feeCollectorAddress;
uint256 totalStaked;
uint256 sub_264b0a5a;
uint256 sub_1c63ed6c;
array of struct sub_d923e4d4;
mapping of uint256 staked;
array of struct unlock;

function sub_0baa7f53(?) {
    return sub_0baa7f53
}

function sub_1587d5b0(?) {
    return sub_1587d5b0
}

function sub_1c63ed6c(?) {
    return sub_1c63ed6c
}

function sub_264b0a5a(?) {
    return sub_264b0a5a
}

function sub_3b9e5f5a(?) {
    return sub_3b9e5f5aAddress
}

function stakeToken() {
    return stakeTokenAddress
}

function unlock(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < unlock[arg1].field_0
    return unlock[arg1][arg2].field_0, unlock[arg1][arg2].field_256, unlock[arg1][arg2].field_512
}

function totalStaked() {
    return totalStaked
}

function owner() {
    return owner
}

function staked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return staked[arg1]
}

function sub_998613c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return unlock[address(arg1)].field_0
}

function sub_b42e7e7c(?) {
    return sub_b42e7e7cAddress
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_d923e4d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d923e4d4[address(arg1)].field_0
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

function setActivate() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_1c63ed6c:
        sub_1c63ed6c = block.timestamp
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = arg1
}

function sub_3901e900(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * arg2 / 1440 * 24 * 3600)
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

function sub_6228d08e(?) {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 5 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_264b0a5a = 5 * ext_call.return_data[0] / 1000
}

function sub_5958e67a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 160
    mem[64] = (32 * sub_d923e4d4[address(arg1)].field_0) + 128
    mem[96] = sub_d923e4d4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_d923e4d4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 160)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = sub_d923e4d4[address(arg1)][idx].field_0
        mem[_12 + 32] = sub_d923e4d4[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_f941a4cf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 162
    mem[64] = (32 * unlock[address(arg1)].field_0) + 128
    mem[96] = unlock[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < unlock[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 162)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = unlock[address(arg1)][idx].field_0
        mem[_13 + 32] = unlock[address(arg1)][idx].field_256
        mem[_13 + 64] = unlock[address(arg1)][idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = mem[_21 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function mint() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if sub_d923e4d4[address(msg.sender)].field_0:
        revert with 0, 'minted'
    sub_d923e4d4[address(msg.sender)].field_0++
    sub_d923e4d4[address(msg.sender)][sub_d923e4d4[address(msg.sender)].field_0].field_0 = 0
    sub_d923e4d4[address(msg.sender)][sub_d923e4d4[address(msg.sender)].field_0].field_256 = 0
    sub_d923e4d4[address(msg.sender)][sub_d923e4d4[address(msg.sender)].field_0].field_256 = block.timestamp
    if 5 * 10^16 != msg.value:
        revert with 0, 'Required 0.05 BNB'
    if staked[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
        revert with 'NH{q', 17
    staked[address(msg.sender)] += 10000 * 10^18
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), 10000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call feeCollectorAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '!safeTransferETH'
    emit Mint(block.timestamp, msg.sender, 0);
    stor101 = 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
    stakeTokenAddress = arg1
    create contract with 0 wei
                    code: code.data[14225 len 2583], address(msg.sender), arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3b9e5f5aAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[14225 len 2583], address(msg.sender), arg1
    sub_b42e7e7cAddress = address(create.new_address)
    sub_0baa7f53 = 3689348814741910323
    sub_1587d5b0 = 3689348814741910323
    feeCollectorAddress = msg.sender
    sub_1c63ed6c = 0
    require ext_code.size(arg1)
    staticcall arg1.cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 5 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_264b0a5a = 5 * ext_call.return_data[0] / 10000
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if sub_d923e4d4[address(msg.sender)].field_0:
        revert with 0, 'minted'
    sub_d923e4d4[address(msg.sender)].field_0++
    sub_d923e4d4[address(msg.sender)][sub_d923e4d4[address(msg.sender)].field_0].field_0 = arg1
    sub_d923e4d4[address(msg.sender)][sub_d923e4d4[address(msg.sender)].field_0].field_256 = block.timestamp
    if arg1:
        sub_d923e4d4[address(arg1)].field_0++
        sub_d923e4d4[address(arg1)][sub_d923e4d4[address(arg1)].field_0].field_0 = msg.sender
        sub_d923e4d4[address(arg1)][sub_d923e4d4[address(arg1)].field_0].field_256 = block.timestamp
        if sub_d923e4d4[address(arg1)].field_0 <= 1:
            revert with 0, 'Referrer is not a system address'
        if sub_d923e4d4[address(arg1)].field_0 > 51:
            revert with 0, 'Maximum of 50 referrals'
    if 5 * 10^16 != msg.value:
        revert with 0, 'Required 0.05 BNB'
    if staked[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
        revert with 'NH{q', 17
    staked[address(msg.sender)] += 10000 * 10^18
    if not arg1:
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), 10000 * 10^18
    else:
        if staked[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffffffde1e61f36454dbfffff:
            revert with 'NH{q', 17
        staked[address(arg1)] += 10000 * 10^18
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), 20000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call feeCollectorAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '!safeTransferETH'
    emit Mint(block.timestamp, msg.sender, arg1);
    stor101 = 1
}



}
