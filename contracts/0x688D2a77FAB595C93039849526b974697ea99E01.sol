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
uint8 sub_78710d43;
uint256 sub_f89b969f;
uint256 sub_6ddeec7d;
uint256 sub_e7eb24a1;
uint256 sub_1d0967cd;
mapping of uint256 stor19;

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
    return bool(sub_78710d43)
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

function sub_be207882(?) {
    return sub_be207882
}

function sub_e7eb24a1(?) {
    return sub_e7eb24a1
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3dbd2471(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be207882 = arg1
}

function sub_cf11353b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12[address(arg1)]:
        return block.number >= sub_4718eb82[address(arg1)]
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
    sub_78710d43 = uint8(bool(arg1))
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
    return ext_call.return_data[0]
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

function initContract() {
    sub_78710d43 = 1
    sub_6ddeec7d = block.number
    if block.number > !sub_1d0967cd:
        revert with 0, 17
    sub_e7eb24a1 = block.number + sub_1d0967cd
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args airdropContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stakingContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < ext_call.return_data[0]:
        revert with 0, 17
    if -ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if not stor12[address(arg1)]:
        if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
            revert with 0, 17
        if not -2 * ext_call.return_data[0]:
            revert with 0, 18
        return (sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
        revert with 0, 17
    if not -2 * ext_call.return_data[0]:
        revert with 0, 18
    if sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0] < sub_7a65b971[address(arg1)]:
        revert with 0, 17
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args airdropContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stakingContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < ext_call.return_data[0]:
        revert with 0, 17
    if -ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if not stor12[address(arg1)]:
        if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
            revert with 0, 17
        if not -2 * ext_call.return_data[0]:
            revert with 0, 18
        return (sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
        revert with 0, 17
    if not -2 * ext_call.return_data[0]:
        revert with 0, 18
    if sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0] < sub_7a65b971[address(arg1)]:
        revert with 0, 17
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Staker: caller is not a DEFI Staker'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !sub_9fef8535:
        revert with 0, 17
    if ext_call.return_data[0] + sub_9fef8535 < sub_f89b969f:
        revert with 0, 17
    if sub_f89b969f > !(ext_call.return_data[0] + sub_9fef8535 - sub_f89b969f):
        revert with 0, 17
    sub_f89b969f = ext_call.return_data[0] + sub_9fef8535
    if block.number >= sub_e7eb24a1:
        if block.number > !sub_1d0967cd:
            revert with 0, 17
        sub_e7eb24a1 = block.number + sub_1d0967cd
    if stor12[address(arg1)]:
        if block.number < sub_4718eb82[address(arg1)]:
            revert with 0, 'Must wait claim period before claiming rewards'
    if not sub_78710d43:
        revert with 0, 'Dividends claiming not active yet'
    if block.number > !sub_be207882:
        revert with 0, 17
    sub_4d5496a8[address(arg1)] = block.number
    sub_4718eb82[address(arg1)] = block.number + sub_be207882
    if not stor19[address(arg1)]:
        revert with 0, 'You can,t withdraw zero balance, Chad wait next rebase'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_6ea36ac5 = ext_call.return_data[0]
    if ext_call.return_data[0] < stor19[address(arg1)]:
        revert with 0, 17
    sub_6ea36ac5 = ext_call.return_data[0] - stor19[address(arg1)]
    if stor19[address(arg1)] < stor19[address(arg1)]:
        revert with 0, 17
    stor19[address(arg1)] = 0
    if sub_9fef8535 > !stor19[address(arg1)]:
        revert with 0, 17
    sub_9fef8535 += stor19[address(arg1)]
    if sub_7a65b971[address(arg1)] > !stor19[address(arg1)]:
        revert with 0, 17
    sub_7a65b971[address(arg1)] += stor19[address(arg1)]
    stor12[address(arg1)] = 1
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), stor19[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x463b7d59: sub_4d5496a8[address(arg1)], address(arg1), stor19[address(arg1)]
}

function sub_3c4c071b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _126 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(_126)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _130 = mem[_129]
        if mem[_129] <= 0:
            revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
        mem[0] = address(_126)
        mem[32] = 12
        require ext_code.size(stor2)
        staticcall stor2.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor12[address(_126)]:
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _141 = mem[_139]
            mem[mem[64] + 4] = 0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_147]
            mem[mem[64] + 4] = airdropContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args airdropContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _157 = mem[_155]
            mem[mem[64] + 4] = stakingContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_163]
            if _141 < _149:
                revert with 0, 17
            if _141 - _149 < _157:
                revert with 0, 17
            if _141 - _149 - _157 < mem[_163]:
                revert with 0, 17
            if sub_f89b969f and _130 > -1 / sub_f89b969f:
                revert with 0, 17
            if not _141 - _149 - _157 - mem[_163]:
                revert with 0, 18
            if idx >= mem[96]:
                revert with 0, 50
            if stor19[mem[(32 * idx) + 140 len 20]] > !(sub_f89b969f * _130 / _141 - _149 - _157 - mem[_163]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            stor19[mem[(32 * idx) + 140 len 20]] += sub_f89b969f * _130 / _141 - _149 - _157 - _165
        else:
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_138]
            mem[mem[64] + 4] = 0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _148 = mem[_146]
            mem[mem[64] + 4] = airdropContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args airdropContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _156 = mem[_154]
            mem[mem[64] + 4] = stakingContractAddress
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _164 = mem[_162]
            if _140 < _148:
                revert with 0, 17
            if _140 - _148 < _156:
                revert with 0, 17
            if _140 - _148 - _156 < mem[_162]:
                revert with 0, 17
            mem[mem[64] + 4] = address(_126)
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_126)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _169 = mem[_168]
            if sub_f89b969f and mem[_168] > -1 / sub_f89b969f:
                revert with 0, 17
            if not _140 - _148 - _156 - _164:
                revert with 0, 18
            if sub_f89b969f * mem[_168] / _140 - _148 - _156 - _164 < sub_7a65b971[address(_126)]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if stor19[mem[(32 * idx) + 140 len 20]] > !((sub_f89b969f * mem[_168] / _140 - _148 - _156 - _164) - sub_7a65b971[address(_126)]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            stor19[mem[(32 * idx) + 140 len 20]] = stor19[mem[(32 * idx) + 140 len 20]] + (sub_f89b969f * _169 / _140 - _148 - _156 - _164) - sub_7a65b971[address(_126)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8203f5fe(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc465bed6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xee99205c(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xee99205c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return stakingContractAddress
                    if unknown_0xf2b56a95(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor12[cd[4]])
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf4e0d9ac(?????):
                            require unknown_0xf89b969f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_f89b969f
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stakingContractAddress = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                if uint32(call.func_hash) >> 224 != unknown_0xc465bed6(?????):
                    if unknown_0xcf11353b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor12[address(cd[4])]:
                            return block.number >= sub_4718eb82[address(cd[4])]
                        return 1
                    if uint32(call.func_hash) >> 224 != unknown_0xdb2e21bc(?????):
                        require unknown_0xe7eb24a1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_e7eb24a1
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_6ea36ac5 = ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, sub_6ea36ac5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0xab0eda9e(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xab0eda9e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        airdropContractAddress = address(cd[4])
                    if unknown_0xab2be726(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return airdropContractAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xabd70aa2(?????):
                        require unknown_0xbe207882(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_be207882
                    require not msg.value
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x8203f5fe(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    sub_78710d43 = 1
                    sub_6ddeec7d = block.number
                    if block.number > !sub_1d0967cd:
                        revert with 0, 17
                    sub_e7eb24a1 = block.number + sub_1d0967cd
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_f89b969f = ext_call.return_data[0]
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x9f657426(?????):
                    require unknown_0x9fef8535(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_9fef8535
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
            require ext_code.size(stor2)
            staticcall stor2.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args airdropContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 < ext_call.return_data[0]:
                revert with 0, 17
            if -ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if not stor12[address(cd[4])]:
                if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
                    revert with 0, 17
                if not -2 * ext_call.return_data[0]:
                    revert with 0, 18
                return (sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0])
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f89b969f and ext_call.return_data[0] > -1 / sub_f89b969f:
                revert with 0, 17
            if not -2 * ext_call.return_data[0]:
                revert with 0, 18
            if sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0] < sub_7a65b971[address(cd[4])]:
                revert with 0, 17
            return ((sub_f89b969f * ext_call.return_data[0] / -2 * ext_call.return_data[0]) - sub_7a65b971[address(cd[4])])
        if unknown_0x6ddeec7d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                if unknown_0x78710d43(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(sub_78710d43)
                if unknown_0x7a65b971(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_7a65b971[address(cd[4])]
                require unknown_0x7f674f48(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return sub_7a65b971[cd[4]]
            if unknown_0x6ddeec7d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_6ddeec7d
            if unknown_0x6ea36ac5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_6ea36ac5
            if unknown_0x6f526f69(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_6f526f69
            require unknown_0x6f6ab61b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == bool(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            sub_78710d43 = uint8(bool(cd[4]))
        else:
            if unknown_0x4718eb82(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1d0967cd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_1d0967cd
                if uint32(call.func_hash) >> 224 != unknown_0x3c4c071b(?????):
                    if unknown_0x3dbd2471(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_be207882 = cd[4]
                    require unknown_0x43567b5c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + 129
                mem[128] = ('cd', 4).length
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _421 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_421)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _425 = mem[_424]
                    if mem[_424] <= 0:
                        revert with 0, 'You must Stake your DEFI TOKEN balance to claim BUSD Dividend'
                    mem[0] = address(_421)
                    mem[32] = 12
                    require ext_code.size(stor2)
                    staticcall stor2.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor12[address(_421)]:
                        _434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _436 = mem[_434]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _442 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _444 = mem[_442]
                        mem[mem[64] + 4] = airdropContractAddress
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args airdropContractAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _452 = mem[_450]
                        mem[mem[64] + 4] = stakingContractAddress
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _460 = mem[_458]
                        if _436 < _444:
                            revert with 0, 17
                        if _436 - _444 < _452:
                            revert with 0, 17
                        if _436 - _444 - _452 < mem[_458]:
                            revert with 0, 17
                        if sub_f89b969f and _425 > -1 / sub_f89b969f:
                            revert with 0, 17
                        if not _436 - _444 - _452 - mem[_458]:
                            revert with 0, 18
                        if idx >= mem[128]:
                            revert with 0, 50
                        if stor19[mem[(32 * idx) + 172 len 20]] > !(sub_f89b969f * _425 / _436 - _444 - _452 - mem[_458]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 19
                        stor19[mem[(32 * idx) + 172 len 20]] += sub_f89b969f * _425 / _436 - _444 - _452 - _460
                    else:
                        _433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _435 = mem[_433]
                        mem[mem[64] + 4] = 0
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _441 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _443 = mem[_441]
                        mem[mem[64] + 4] = airdropContractAddress
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args airdropContractAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _451 = mem[_449]
                        mem[mem[64] + 4] = stakingContractAddress
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _459 = mem[_457]
                        if _435 < _443:
                            revert with 0, 17
                        if _435 - _443 < _451:
                            revert with 0, 17
                        if _435 - _443 - _451 < mem[_457]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_421)
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_421)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _463 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _464 = mem[_463]
                        if sub_f89b969f and mem[_463] > -1 / sub_f89b969f:
                            revert with 0, 17
                        if not _435 - _443 - _451 - _459:
                            revert with 0, 18
                        if sub_f89b969f * mem[_463] / _435 - _443 - _451 - _459 < sub_7a65b971[address(_421)]:
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        if stor19[mem[(32 * idx) + 172 len 20]] > !((sub_f89b969f * mem[_463] / _435 - _443 - _451 - _459) - sub_7a65b971[address(_421)]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 19
                        stor19[mem[(32 * idx) + 172 len 20]] = stor19[mem[(32 * idx) + 172 len 20]] + (sub_f89b969f * _464 / _435 - _443 - _451 - _459) - sub_7a65b971[address(_421)]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x4718eb82(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_4718eb82[cd[4]]
                if unknown_0x4d5496a8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_4d5496a8[cd[4]]
                if unknown_0x52e9c6d4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor2 = address(cd[4])
                else:
                    require unknown_0x69741197(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Staker: caller is not a DEFI Staker'
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !sub_9fef8535:
                        revert with 0, 17
                    if ext_call.return_data[0] + sub_9fef8535 < sub_f89b969f:
                        revert with 0, 17
                    if sub_f89b969f > !(ext_call.return_data[0] + sub_9fef8535 - sub_f89b969f):
                        revert with 0, 17
                    sub_f89b969f = ext_call.return_data[0] + sub_9fef8535
                    if block.number >= sub_e7eb24a1:
                        if block.number > !sub_1d0967cd:
                            revert with 0, 17
                        sub_e7eb24a1 = block.number + sub_1d0967cd
                    if stor12[address(cd[4])]:
                        if block.number < sub_4718eb82[address(cd[4])]:
                            revert with 0, 'Must wait claim period before claiming rewards'
                    if not sub_78710d43:
                        revert with 0, 'Dividends claiming not active yet'
                    if block.number > !sub_be207882:
                        revert with 0, 17
                    sub_4d5496a8[address(cd[4])] = block.number
                    sub_4718eb82[address(cd[4])] = block.number + sub_be207882
                    if not stor19[address(cd[4])]:
                        revert with 0, 'You can,t withdraw zero balance, Chad wait next rebase'
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_6ea36ac5 = ext_call.return_data[0]
                    if ext_call.return_data[0] < stor19[address(cd[4])]:
                        revert with 0, 17
                    sub_6ea36ac5 = ext_call.return_data[0] - stor19[address(cd[4])]
                    if stor19[address(cd[4])] < stor19[address(cd[4])]:
                        revert with 0, 17
                    stor19[address(cd[4])] = 0
                    if sub_9fef8535 > !stor19[address(cd[4])]:
                        revert with 0, 17
                    sub_9fef8535 += stor19[address(cd[4])]
                    if sub_7a65b971[address(cd[4])] > !stor19[address(cd[4])]:
                        revert with 0, 17
                    sub_7a65b971[address(cd[4])] += stor19[address(cd[4])]
                    stor12[address(cd[4])] = 1
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), stor19[address(cd[4])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x463b7d59: sub_4d5496a8[address(cd[4])], address(cd[4]), stor19[address(cd[4])]
}



}
