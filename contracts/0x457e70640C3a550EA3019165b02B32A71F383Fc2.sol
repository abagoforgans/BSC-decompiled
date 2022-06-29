contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stakingContractAddress;
address airdropContractAddress;
uint256 sub_be207882;
uint256 sub_6f526f69;
mapping of uint256 sub_4d5496a8;
mapping of uint256 sub_4718eb82;
uint256 sub_6ea36ac5;
uint256 sub_9fef8535;
mapping of uint256 sub_7a65b971;
mapping of uint8 stor12;
uint8 stor13;
uint256 sub_f89b969f;
uint256 sub_6ddeec7d;
uint256 sub_e7eb24a1;
uint256 sub_1d0967cd;
array of address sub_ae74d9e9;
mapping of uint256 sub_ed8aa70f;

function sub_1d0967cd(?) {
    return sub_1d0967cd
}

function sub_4718eb82(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4718eb82[arg1]
}

function sub_4d5496a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4d5496a8[arg1]
}

function sub_6ddeec7d(?) {
    return sub_6ddeec7d
}

function sub_6ea36ac5(?) {
    return sub_6ea36ac5
}

function sub_6f526f69(?) {
    return sub_6f526f69
}

function sub_78710d43(?) {
    return bool(stor13)
}

function sub_7a65b971(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7a65b971[address(arg1)]
}

function _totalClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7a65b971[arg1]
}

function owner() {
    return owner
}

function sub_9fef8535(?) {
    return sub_9fef8535
}

function airdropContract() {
    return airdropContractAddress
}

function sub_ae74d9e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ae74d9e9.length
    return sub_ae74d9e9[arg1]
}

function sub_be207882(?) {
    return sub_be207882
}

function sub_e7eb24a1(?) {
    return sub_e7eb24a1
}

function sub_ed8aa70f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ed8aa70f[arg1]
}

function stakingContract() {
    return stakingContractAddress
}

function sub_f2b56a95(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sub_f89b969f(?) {
    return sub_f89b969f
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3dbd2471(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be207882 = arg1
}

function sub_cf11353b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12[address(arg1)]:
        return sub_4718eb82[address(arg1)] <= block.number
    return 1
}

function setStakedToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_6f6ab61b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(bool(arg1))
}

function setAirdropAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropContractAddress = arg1
}

function setStakingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingContractAddress = arg1
}

function getPoolBalance() {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_43567b5c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function initContract() {
    stor13 = 1
    sub_6ddeec7d = block.number
    if block.number > -sub_1d0967cd - 1:
        revert with 'NH{q', 17
    sub_e7eb24a1 = block.number + sub_1d0967cd
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_f89b969f = ext_call.return_data[0]
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_6ea36ac5 = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, sub_6ea36ac5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function calculateDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args airdropContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stakingContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not stor12[address(arg1)]:
        if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
            revert with 'NH{q', 17
        if not -2 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
        revert with 'NH{q', 17
    if not -2 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0] < sub_7a65b971[address(arg1)]:
        revert with 'NH{q', 17
    return ((sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0]) - sub_7a65b971[address(arg1)])
}

function sub_c465bed6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args airdropContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stakingContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not stor12[address(arg1)]:
        if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
            revert with 'NH{q', 17
        if not -2 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
        revert with 'NH{q', 17
    if not -2 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0] < sub_7a65b971[address(arg1)]:
        revert with 'NH{q', 17
    return ((sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0]) - sub_7a65b971[address(arg1)])
}

function sub_69741197(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Staker: caller is not a DEFI Staker'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_9fef8535 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + sub_9fef8535 < sub_f89b969f:
        revert with 'NH{q', 17
    if sub_f89b969f > -ext_call.return_data[0] + -sub_9fef8535 + sub_f89b969f - 1:
        revert with 'NH{q', 17
    sub_f89b969f = ext_call.return_data[0] + sub_9fef8535
    if sub_e7eb24a1 <= block.number:
        if block.number > -sub_1d0967cd - 1:
            revert with 'NH{q', 17
        sub_e7eb24a1 = block.number + sub_1d0967cd
    if stor12[address(arg1)]:
        if sub_4718eb82[address(arg1)] > block.number:
            revert with 0, 'Must wait claim period before claiming rewards'
    if not stor13:
        revert with 0, 'Dividends claiming not active yet'
    if block.number > -sub_be207882 - 1:
        revert with 'NH{q', 17
    sub_4d5496a8[address(arg1)] = block.number
    sub_4718eb82[address(arg1)] = block.number + sub_be207882
    if sub_ed8aa70f[address(arg1)] <= 0:
        revert with 0, 'You can,t withdraw zero balance, Chad wait next rebase'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_6ea36ac5 = ext_call.return_data[0]
    if sub_6ea36ac5 < sub_ed8aa70f[address(arg1)]:
        revert with 'NH{q', 17
    sub_6ea36ac5 -= sub_ed8aa70f[address(arg1)]
    if sub_ed8aa70f[address(arg1)] < sub_ed8aa70f[address(arg1)]:
        revert with 'NH{q', 17
    sub_ed8aa70f[address(arg1)] = 0
    if sub_9fef8535 > -sub_ed8aa70f[address(arg1)] - 1:
        revert with 'NH{q', 17
    sub_9fef8535 += sub_ed8aa70f[address(arg1)]
    if sub_7a65b971[address(arg1)] > -sub_ed8aa70f[address(arg1)] - 1:
        revert with 'NH{q', 17
    sub_7a65b971[address(arg1)] += sub_ed8aa70f[address(arg1)]
    stor12[address(arg1)] = 1
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_ed8aa70f[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x463b7d59: sub_4d5496a8[address(arg1)], address(arg1), sub_ed8aa70f[address(arg1)]
}

function sub_3c4c071b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _120 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(_120)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _124 = mem[_123]
        require mem[_123] == mem[_123]
        if mem[_123] <= 0:
            revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
        mem[0] = address(_120)
        mem[32] = 12
        require ext_code.size(stor2)
        staticcall stor2.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor12[address(_120)]:
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _134 = mem[_132]
            require mem[_132] == mem[_132]
            mem[mem[64] + 4] = 0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _143 = mem[_141]
            require mem[_141] == mem[_141]
            mem[mem[64] + 4] = airdropContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args airdropContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _151 = mem[_149]
            require mem[_149] == mem[_149]
            mem[mem[64] + 4] = stakingContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _159 = mem[_157]
            require mem[_157] == mem[_157]
            if _134 < _143:
                revert with 'NH{q', 17
            if _134 - _143 < _151:
                revert with 'NH{q', 17
            if _134 - _143 - _151 < mem[_157]:
                revert with 'NH{q', 17
            if sub_f89b969f and _124 > -1 / sub_f89b969f:
                revert with 'NH{q', 17
            if not _134 - _143 - _151 - mem[_157]:
                revert with 'NH{q', 18
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if sub_ed8aa70f[mem[(32 * idx) + 140 len 20]] > -(sub_f89b969f * _124 / _134 - _143 - _151 - mem[_157]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            sub_ed8aa70f[mem[(32 * idx) + 140 len 20]] += sub_f89b969f * _124 / _134 - _143 - _151 - _159
        else:
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _133 = mem[_131]
            require mem[_131] == mem[_131]
            mem[mem[64] + 4] = 0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _142 = mem[_140]
            require mem[_140] == mem[_140]
            mem[mem[64] + 4] = airdropContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args airdropContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_148]
            require mem[_148] == mem[_148]
            mem[mem[64] + 4] = stakingContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _158 = mem[_156]
            require mem[_156] == mem[_156]
            if _133 < _142:
                revert with 'NH{q', 17
            if _133 - _142 < _150:
                revert with 'NH{q', 17
            if _133 - _142 - _150 < mem[_156]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(_120)
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_120)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _163 = mem[_162]
            require mem[_162] == mem[_162]
            if sub_f89b969f and mem[_162] > -1 / sub_f89b969f:
                revert with 'NH{q', 17
            if not _133 - _142 - _150 - _158:
                revert with 'NH{q', 18
            if sub_f89b969f * mem[_162] / _133 - _142 - _150 - _158 < sub_7a65b971[address(_120)]:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if sub_ed8aa70f[mem[(32 * idx) + 140 len 20]] > -(sub_f89b969f * mem[_162] / _133 - _142 - _150 - _158) + sub_7a65b971[address(_120)] - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            sub_ed8aa70f[mem[(32 * idx) + 140 len 20]] = sub_ed8aa70f[mem[(32 * idx) + 140 len 20]] + (sub_f89b969f * _163 / _133 - _142 - _150 - _158) - sub_7a65b971[address(_120)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
