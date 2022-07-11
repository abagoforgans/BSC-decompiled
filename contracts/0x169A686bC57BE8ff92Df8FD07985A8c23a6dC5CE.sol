contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - getCredit()
#  - addReward(uint256 arg1)
#  - recoverERC20(address arg1, uint256 arg2)
#  - exit()
#  - sub_f34062cd(?)
#
const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
array of struct roleMember;
uint8 paused;
uint256 stor251;
address rewardsTokenAddress;
address stakingTokenAddress;
address factoryAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 sub_e7be12aa;
array of uint256 sub_0aae47fb;
mapping of uint256 sub_1538947e;
mapping of uint256 rewards;
mapping of uint256 sub_e068cb1e;
mapping of uint256 sub_efa17d1a;
mapping of uint8 stor414;
mapping of uint256 sub_425a5177;
uint256 sub_24fe21c0;
uint256 sub_ab7c4841;
uint256 sub_cd601c0f;
address stor419;
uint256 stor419;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 sub_ea2922b5;
array of uint256 stor67863289379899430923464995550773376080403125760299977269216393766834534968859;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function sub_0aae47fb(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0aae47fb.length
    return sub_0aae47fb[arg1]
}

function sub_1538947e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1538947e[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_2216aec7(?) {
    require calldata.size - 4 >= 32
    return bool(stor414[arg1])
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_24fe21c0(?) {
    return sub_24fe21c0
}

function rewardsDuration() {
    return rewardsDuration
}

function sub_425a5177(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_425a5177[arg1]
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function stakingToken() {
    return stakingTokenAddress
}

function rewardRate() {
    return rewardRate
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function factoryAddress() {
    return factoryAddress
}

function sub_ab7c4841(?) {
    return sub_ab7c4841
}

function lastUpdateTime() {
    return lastUpdateTime
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_cd601c0f(?) {
    return sub_cd601c0f
}

function rewardsToken() {
    return rewardsTokenAddress
}

function sub_e068cb1e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_e068cb1e[arg1][arg2]
}

function sub_e7be12aa(?) {
    return sub_e7be12aa
}

function sub_ea2922b5(?) {
    return sub_ea2922b5
}

function periodFinish() {
    return periodFinish
}

function sub_efa17d1a(?) {
    require calldata.size - 4 >= 32
    return sub_efa17d1a[arg1]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function getRewardForDuration() {
    if rewardRate and rewardsDuration > -1 / rewardRate:
        revert with 0, 17
    return (rewardRate * rewardsDuration)
}

function sub_d7b94314(?) {
    if not totalSupply:
        revert with 0, 18
    if rewardRate / totalSupply > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    return (3600 * rewardRate / totalSupply)
}

function sub_2f7e2730(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_24fe21c0 == sub_425a5177[address(arg1)]:
        if periodFinish >= block.timestamp:
            return (periodFinish - block.timestamp)
        else:
            return 0
    else:
        return 0
}

function sub_ffc021d2(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        revert with 0, 18
    if rewardRate / totalSupply > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if 3600 * rewardRate / totalSupply and sub_efa17d1a[arg1] > -1 / 3600 * rewardRate / totalSupply:
        revert with 0, 17
    return (3600 * rewardRate / totalSupply * sub_efa17d1a[arg1])
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function rewardPerWeight() {
    if 0 == totalSupply:
        return sub_e7be12aa
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        return (sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    return (sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply))
}

function sub_717e546b(?) {
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        periodFinish = block.timestamp
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_9794179f(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        rewardRate = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_0fd6b5c8(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_ea2922b5 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_1fd396e4(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_ab7c4841 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_6218a401(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_cd601c0f = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setPeriodFinish(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        periodFinish = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function pause() {
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_f0e59291(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        address(stor419) = address(arg1)
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function unpause() {
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setRewardsDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        rewardsDuration = arg1
        emit RewardsDurationUpdated(arg1);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sweep() {
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'MPSTK: Failed BNB transfer'
        emit Recovered(0, eth.balance(this.address));
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function recoverBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'MPSTK: Failed BNB transfer'
        emit Recovered(0, arg1);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if floor32(arg3.length) + 97 < 96 or floor32(arg3.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if floor32(arg4.length) + 98 < 97 or floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_230b75a3(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(arg2) == bool(stor414[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPSTK: isAccepted is already set to that value'
    if not arg3:
        revert with 0, 'MPSTK: weight cannot be 0'
    if not sub_efa17d1a[arg1]:
        sub_0aae47fb.length++
        stor9609[stor409.length] = arg1
    stor414[arg1] = uint8(bool(arg2))
    sub_efa17d1a[arg1] = arg3
}

function updateRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if periodFinish < block.timestamp:
        revert with 0, 17
    if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
        revert with 0, 17
    if arg1 > !((periodFinish * rewardRate) - (block.timestamp * rewardRate)):
        revert with 0, 17
    if not rewardsDuration:
        revert with 0, 18
    rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    emit RewardAdded(arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function getUserStakedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_0aae47fb.length:
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if sub_e068cb1e[address(arg1)][stor409[idx]] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    if s > test266151307():
        revert with 0, 65
    mem[(32 * s) + 128] = s
    if s:
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < sub_0aae47fb.length:
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if sub_e068cb1e[address(arg1)][stor409[idx]] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= sub_0aae47fb.length:
            revert with 0, 50
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + 128] = sub_0aae47fb[idx]
        if idx >= sub_0aae47fb.length:
            revert with 0, 50
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if t >= mem[(32 * s) + 128]:
            revert with 0, 50
        mem[(32 * t) + (32 * s) + 160] = sub_e068cb1e[address(arg1)][stor409[idx]]
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    mem[(64 * s) + 256 len 32 * s] = mem[128 len 32 * s]
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = mem[(32 * s) + 128]
    mem[(98 * s) + 288 len 32 * mem[(32 * s) + 128]] = mem[(32 * s) + 160 len 32 * mem[(32 * s) + 128]]
    return memory
      from (64 * s) + 160
       len (161 * s) + (32 * mem[(32 * s) + 128]) + 128
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalSupply:
        if sub_e7be12aa < sub_1538947e[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
            revert with 0, 17
        return ((sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
            revert with 0, 17
        return ((sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
        revert with 0, 17
    return ((sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)])
}

function sub_d3fb97a2(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 99 < 98 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'MPSTK: Length mismatch'
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'MPSTK: Length mismatch'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if bool(mem[(32 * idx) + floor32(('cd', 4).length) + 129]) == bool(stor414[mem[(32 * idx) + 128]]):
                revert with 0, 'MPSTK: isAccepted is already set to that value'
            if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
                revert with 0, 'MPSTK: weight cannot be 0'
            if not sub_efa17d1a[mem[(32 * idx) + 128]]:
                sub_0aae47fb.length++
                stor9609[stor409.length] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            stor414[mem[(32 * idx) + 128]] = uint8(bool(mem[(32 * idx) + floor32(('cd', 4).length) + 129]))
            mem[32] = 413
            sub_efa17d1a[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalSupply:
            if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        sub_1538947e[address(msg.sender)] = sub_e7be12aa
    if arg2 <= 0:
        revert with 0, 'MPSTK: Cannot withdraw 0'
    if arg2 > sub_e068cb1e[msg.sender][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPSTK: Cannot unstake more than staked'
    if sub_efa17d1a[arg1] and arg2 > -1 / sub_efa17d1a[arg1]:
        revert with 0, 17
    if totalSupply < sub_efa17d1a[arg1] * arg2:
        revert with 0, 17
    totalSupply += -1 * sub_efa17d1a[arg1] * arg2
    if sub_efa17d1a[arg1] and arg2 > -1 / sub_efa17d1a[arg1]:
        revert with 0, 17
    if balanceOf[msg.sender] < sub_efa17d1a[arg1] * arg2:
        revert with 0, 17
    balanceOf[msg.sender] += -1 * sub_efa17d1a[arg1] * arg2
    if sub_e068cb1e[msg.sender][arg1] < arg2:
        revert with 0, 17
    sub_e068cb1e[msg.sender][arg1] -= arg2
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg1, arg2, 160, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg1, arg2, msg.sender);
    stor251 = 1
}

function stake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalSupply:
            if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        sub_1538947e[address(msg.sender)] = sub_e7be12aa
    if arg2 <= 0:
        revert with 0, 'MPSTK: Cannot stake 0'
    if not sub_efa17d1a[arg1]:
        revert with 0, 'MPSTK: Cannot stake this token'
    if not stor414[arg1]:
        revert with 0, 'MPSTK: Cannot stake this token'
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg2, 160, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_e068cb1e[msg.sender][arg1] > !arg2:
        revert with 0, 17
    sub_e068cb1e[msg.sender][arg1] += arg2
    if sub_efa17d1a[arg1] and arg2 > -1 / sub_efa17d1a[arg1]:
        revert with 0, 17
    if totalSupply > !(sub_efa17d1a[arg1] * arg2):
        revert with 0, 17
    totalSupply += sub_efa17d1a[arg1] * arg2
    if sub_efa17d1a[arg1] and arg2 > -1 / sub_efa17d1a[arg1]:
        revert with 0, 17
    if balanceOf[msg.sender] > !(sub_efa17d1a[arg1] * arg2):
        revert with 0, 17
    balanceOf[msg.sender] += sub_efa17d1a[arg1] * arg2
    emit Staked(arg1, arg2, msg.sender);
    stor251 = 1
}

function withdrawBatch(uint256[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalSupply:
            if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
        sub_1538947e[address(msg.sender)] = sub_e7be12aa
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPSTK: Ids and amounts do not match'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if sub_e068cb1e[msg.sender][cd[((32 * idx) + arg1 + 36)]] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPSTK: Cannot unstake more than staked'
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] and cd[((32 * idx) + arg2 + 36)] > -1 / sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if totalSupply < sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] * cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        totalSupply += -1 * sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] * cd[((32 * idx) + arg2 + 36)]
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] and cd[((32 * idx) + arg2 + 36)] > -1 / sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 17
        if balanceOf[msg.sender] < sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] * cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        balanceOf[msg.sender] += -1 * sub_efa17d1a[cd[((32 * idx) + arg1 + 36)]] * cd[((32 * idx) + arg2 + 36)]
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = sha3(msg.sender, 412)
        if sub_e068cb1e[msg.sender][cd[((32 * idx) + arg1 + 36)]] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        sub_e068cb1e[msg.sender][cd[((32 * idx) + arg1 + 36)]] -= cd[((32 * idx) + arg2 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, 160, (32 * arg1.length) + 192, (32 * arg2.length) + (32 * arg1.length) + 224, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], 4, 0x3078303000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x12ad8aa5: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]), (32 * arg1.length) + 96, msg.sender
    stor251 = 1
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        stor251 = 1
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor251 = 1
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor251 = 1
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor251 = 1
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor251 = 1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        paused = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            paused = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                paused = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                if uint8(stor0.field_8):
                                                    paused = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    uint8(stor0.field_8) = 0
                                                    if uint8(stor0.field_0):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                    if uint8(stor0.field_8):
                                                        paused = 0
                                                    else:
                                                        uint8(stor0.field_0) = 1
                                                        uint8(stor0.field_8) = 1
                                                        Mask(248, 0, stor0.field_8) = 0
                                                        uint8(stor0.field_8) = 0
                                                        uint8(stor0.field_8) = 0
                                                        if uint8(stor0.field_0):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                        if uint8(stor0.field_8):
                                                            paused = 0
                                                        else:
                                                            uint8(stor0.field_0) = 1
                                                            uint8(stor0.field_8) = 1
                                                            Mask(248, 0, stor0.field_8) = 0
                                                            if uint8(stor0.field_0):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                            if uint8(stor0.field_8):
                                                                paused = 0
                                                            else:
                                                                uint8(stor0.field_0) = 1
                                                                uint8(stor0.field_8) = 1
                                                                Mask(248, 0, stor0.field_8) = 0
                                                                uint8(stor0.field_8) = 0
                                                                if uint8(stor0.field_0):
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                                if uint8(stor0.field_8):
                                                                    paused = 0
                                                                else:
                                                                    uint8(stor0.field_0) = 1
                                                                    uint8(stor0.field_8) = 1
                                                                    Mask(248, 0, stor0.field_8) = 0
                                                                    paused = 0
                                                                    uint8(stor0.field_8) = 0
                                                                    uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, msg.sender, msg.sender);
    if not roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0++
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0].field_0 = msg.sender
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0].field_160 = 0
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0 = roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0
    rewardsTokenAddress = arg1
    stakingTokenAddress = arg2
    factoryAddress = arg3
    rewardsDuration = 720 * 24 * 3600
    if 168 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    periodFinish = block.timestamp + (168 * 24 * 3600)
    sub_24fe21c0 = 0
    rewardRate = 0
    sub_ab7c4841 = 75
    sub_cd601c0f = 10
    uint256(stor419) = msg.sender or Mask(96, 160, uint256(stor419))
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getUserStakingData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_0aae47fb.length:
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if sub_e068cb1e[address(arg1)][stor409[idx]] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    if s:
        mem[288 len 32 * s] = call.data[calldata.size len 32 * s]
    if s > test266151307():
        revert with 0, 65
    mem[(32 * s) + 288] = s
    if s:
        mem[(32 * s) + 320 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < sub_0aae47fb.length:
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if sub_e068cb1e[address(arg1)][stor409[idx]] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= sub_0aae47fb.length:
            revert with 0, 50
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + 288] = sub_0aae47fb[idx]
        if idx >= sub_0aae47fb.length:
            revert with 0, 50
        mem[0] = sub_0aae47fb[idx]
        mem[32] = sha3(address(arg1), 412)
        if t >= mem[(32 * s) + 288]:
            revert with 0, 50
        mem[(32 * t) + (32 * s) + 320] = sub_e068cb1e[address(arg1)][stor409[idx]]
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    if sub_425a5177[address(arg1)] == sub_24fe21c0:
        mem[(64 * s) + 320] = periodFinish
        if sub_24fe21c0 != sub_425a5177[address(arg1)]:
            mem[(64 * s) + 352] = 0
            mem[(64 * s) + 384] = 256
            mem[(64 * s) + 416] = (32 * s) + 288
            if 0 == totalSupply:
                if sub_e7be12aa < sub_1538947e[address(arg1)]:
                    revert with 0, 17
                if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                    revert with 0, 17
                mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                mem[(64 * s) + 480] = 32
                mem[(64 * s) + 512] = periodFinish
                mem[(64 * s) + 544] = 0
                mem[(64 * s) + 576] = 160
                mem[(64 * s) + 672] = s
                mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                mem[(64 * s) + 608] = (32 * s) + 192
                mem[(98 * s) + 704] = mem[(32 * s) + 288]
                mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
            else:
                if block.timestamp < periodFinish:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                        revert with 0, 17
                    if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = periodFinish
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if periodFinish < lastUpdateTime:
                        revert with 0, 17
                    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                        revert with 0, 17
                    if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = periodFinish
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
        else:
            if periodFinish >= block.timestamp:
                mem[(64 * s) + 352] = periodFinish - block.timestamp
                mem[(64 * s) + 384] = 256
                mem[(64 * s) + 416] = (32 * s) + 288
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = periodFinish
                    mem[(64 * s) + 544] = periodFinish - block.timestamp
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = periodFinish
                        mem[(64 * s) + 544] = periodFinish - block.timestamp
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = periodFinish
                        mem[(64 * s) + 544] = periodFinish - block.timestamp
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
            else:
                mem[(64 * s) + 352] = 0
                mem[(64 * s) + 384] = 256
                mem[(64 * s) + 416] = (32 * s) + 288
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = periodFinish
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = periodFinish
                        mem[(64 * s) + 544] = 0
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = periodFinish
                        mem[(64 * s) + 544] = 0
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
    else:
        mem[(64 * s) + 320] = sub_24fe21c0
        if sub_24fe21c0 != sub_425a5177[address(arg1)]:
            mem[(64 * s) + 352] = 0
            mem[(64 * s) + 384] = 256
            mem[(64 * s) + 416] = (32 * s) + 288
            if 0 == totalSupply:
                if sub_e7be12aa < sub_1538947e[address(arg1)]:
                    revert with 0, 17
                if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                    revert with 0, 17
                if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                    revert with 0, 17
                mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                mem[(64 * s) + 480] = 32
                mem[(64 * s) + 512] = sub_24fe21c0
                mem[(64 * s) + 544] = 0
                mem[(64 * s) + 576] = 160
                mem[(64 * s) + 672] = s
                mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                mem[(64 * s) + 608] = (32 * s) + 192
                mem[(98 * s) + 704] = mem[(32 * s) + 288]
                mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
            else:
                if block.timestamp < periodFinish:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                        revert with 0, 17
                    if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = sub_24fe21c0
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if periodFinish < lastUpdateTime:
                        revert with 0, 17
                    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                        revert with 0, 17
                    if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = sub_24fe21c0
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
        else:
            if periodFinish >= block.timestamp:
                mem[(64 * s) + 352] = periodFinish - block.timestamp
                mem[(64 * s) + 384] = 256
                mem[(64 * s) + 416] = (32 * s) + 288
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = sub_24fe21c0
                    mem[(64 * s) + 544] = periodFinish - block.timestamp
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = sub_24fe21c0
                        mem[(64 * s) + 544] = periodFinish - block.timestamp
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = sub_24fe21c0
                        mem[(64 * s) + 544] = periodFinish - block.timestamp
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
            else:
                mem[(64 * s) + 352] = 0
                mem[(64 * s) + 384] = 256
                mem[(64 * s) + 416] = (32 * s) + 288
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and sub_e7be12aa - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    mem[(64 * s) + 480] = 32
                    mem[(64 * s) + 512] = sub_24fe21c0
                    mem[(64 * s) + 544] = 0
                    mem[(64 * s) + 576] = 160
                    mem[(64 * s) + 672] = s
                    mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                    mem[(64 * s) + 608] = (32 * s) + 192
                    mem[(98 * s) + 704] = mem[(32 * s) + 288]
                    mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                    mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = sub_24fe21c0
                        mem[(64 * s) + 544] = 0
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[(64 * s) + 448] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
                        mem[(64 * s) + 480] = 32
                        mem[(64 * s) + 512] = sub_24fe21c0
                        mem[(64 * s) + 544] = 0
                        mem[(64 * s) + 576] = 160
                        mem[(64 * s) + 672] = s
                        mem[(64 * s) + 704 len 32 * s] = mem[288 len 32 * s]
                        mem[(64 * s) + 608] = (32 * s) + 192
                        mem[(98 * s) + 704] = mem[(32 * s) + 288]
                        mem[(98 * s) + 736 len 32 * mem[(32 * s) + 288]] = mem[(32 * s) + 320 len 32 * mem[(32 * s) + 288]]
                        mem[(64 * s) + 640] = (sub_e7be12aa * balanceOf[address(arg1)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (sub_1538947e[address(arg1)] * balanceOf[address(arg1)]) + rewards[address(arg1)]
    return memory
      from (64 * s) + 480
       len (161 * s) + (32 * mem[(32 * s) + 288]) + 256
}

function sub_d0f7d24f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if ('cd', 4).length != ('cd', 36).length:
                    revert with 0, 'MPSTK: Ids and amounts do not match'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                        revert with 0, 'MPSTK: Cannot stake 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                        revert with 0, 'MPSTK: Cannot stake this token'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 414
                    if not stor414[mem[(32 * idx) + 128]]:
                        revert with 0, 'MPSTK: Cannot stake this token'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                s = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + (32 * mem[96]) + 228
                while ('cd', 4).length < ('cd', 36).length:
                    mem[t] = mem[s]
                    s = ('cd', 4).length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                mem[t] = 4
                mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] + 60]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                        revert with 0, 17
                    sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                        revert with 0, 17
                    if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                        revert with 0, 17
                    totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 421
                    if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                        revert with 0, 17
                    balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _6174 = mem[64]
                mem[mem[64]] = 64
                _6310 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _6734 = mem[floor32(('cd', 4).length) + 97]
                mem[_6174 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                mem[_6174 + (32 * _6310) + 128 len 32 * _6734] = mem[floor32(('cd', 4).length) + 129 len 32 * _6734]
                var75001 = _6734
                var75002 = floor32(('cd', 4).length) + (32 * _6734) + 129
                var75007 = _6174 + (32 * _6310) + (32 * _6734) + 128
                emit 0x1ac09ea6: mem[mem[64] len _6174 + (32 * _6310) + (32 * _6734) + -mem[64] + 128], msg.sender
            else:
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                    mem[32] = 410
                    sub_1538947e[address(msg.sender)] = sub_e7be12aa
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6180 = mem[64]
                    mem[mem[64]] = 64
                    _6319 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6737 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6180 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6180 + (32 * _6319) + 128 len 32 * _6737] = mem[floor32(('cd', 4).length) + 129 len 32 * _6737]
                    emit 0x1ac09ea6: mem[mem[64] len _6180 + (32 * _6319) + (32 * _6737) + -mem[64] + 128], msg.sender
                else:
                    if block.timestamp >= periodFinish:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6178 = mem[64]
                        mem[mem[64]] = 64
                        _6316 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6736 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6178 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6178 + (32 * _6316) + 128 len 32 * _6736] = mem[floor32(('cd', 4).length) + 129 len 32 * _6736]
                        var107001 = _6736
                        emit 0x1ac09ea6: mem[mem[64] len _6178 + (32 * _6316) + (32 * _6736) + -mem[64] + 128], msg.sender
                    else:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6176 = mem[64]
                        mem[mem[64]] = 64
                        _6313 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6735 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6176 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6176 + (32 * _6313) + 128 len 32 * _6735] = mem[floor32(('cd', 4).length) + 129 len 32 * _6735]
                        var106001 = _6735
                        var106002 = floor32(('cd', 4).length) + (32 * _6735) + 129
                        var106007 = _6176 + (32 * _6313) + (32 * _6735) + 128
                        emit 0x1ac09ea6: mem[mem[64] len _6176 + (32 * _6313) + (32 * _6735) + -mem[64] + 128], msg.sender
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if ('cd', 4).length != ('cd', 36).length:
                    revert with 0, 'MPSTK: Ids and amounts do not match'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                        revert with 0, 'MPSTK: Cannot stake 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                        revert with 0, 'MPSTK: Cannot stake this token'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 414
                    if not stor414[mem[(32 * idx) + 128]]:
                        revert with 0, 'MPSTK: Cannot stake this token'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                s = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + (32 * mem[96]) + 228
                while ('cd', 4).length < ('cd', 36).length:
                    mem[t] = mem[s]
                    s = ('cd', 4).length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                mem[t] = 4
                mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] + 60]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                        revert with 0, 17
                    sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                        revert with 0, 17
                    if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                        revert with 0, 17
                    totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 421
                    if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                        revert with 0, 17
                    balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _6182 = mem[64]
                mem[mem[64]] = 64
                _6322 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _6738 = mem[floor32(('cd', 4).length) + 97]
                mem[_6182 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                mem[_6182 + (32 * _6322) + 128 len 32 * _6738] = mem[floor32(('cd', 4).length) + 129 len 32 * _6738]
                var76001 = _6738
                var76002 = floor32(('cd', 4).length) + (32 * _6738) + 129
                var76007 = _6182 + (32 * _6322) + (32 * _6738) + 128
                emit 0x1ac09ea6: mem[mem[64] len _6182 + (32 * _6322) + (32 * _6738) + -mem[64] + 128], msg.sender
            else:
                if 0 == totalSupply:
                    if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                    mem[32] = 410
                    sub_1538947e[address(msg.sender)] = sub_e7be12aa
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6188 = mem[64]
                    mem[mem[64]] = 64
                    _6331 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6741 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6188 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6188 + (32 * _6331) + 128 len 32 * _6741] = mem[floor32(('cd', 4).length) + 129 len 32 * _6741]
                    emit 0x1ac09ea6: mem[mem[64] len _6188 + (32 * _6331) + (32 * _6741) + -mem[64] + 128], msg.sender
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6184 = mem[64]
                        mem[mem[64]] = 64
                        _6325 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6739 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6184 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6184 + (32 * _6325) + 128 len 32 * _6739] = mem[floor32(('cd', 4).length) + 129 len 32 * _6739]
                        var107001 = _6739
                        emit 0x1ac09ea6: mem[mem[64] len _6184 + (32 * _6325) + (32 * _6739) + -mem[64] + 128], msg.sender
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6186 = mem[64]
                        mem[mem[64]] = 64
                        _6328 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var103001 = mem[96]
                        var103002 = (32 * mem[96]) + 128
                        var103007 = mem[64] + (32 * mem[96]) + 96
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6740 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6186 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6186 + (32 * _6328) + 128 len 32 * _6740] = mem[floor32(('cd', 4).length) + 129 len 32 * _6740]
                        emit 0x1ac09ea6: mem[mem[64] len _6186 + (32 * _6328) + (32 * _6740) + -mem[64] + 128], msg.sender
    else:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6142 = mem[64]
                    mem[mem[64]] = 64
                    _6262 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6718 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6142 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6142 + (32 * _6262) + 128 len 32 * _6718] = mem[floor32(('cd', 4).length) + 129 len 32 * _6718]
                    var89001 = _6718
                    var89002 = floor32(('cd', 4).length) + (32 * _6718) + 129
                    var89007 = _6142 + (32 * _6262) + (32 * _6718) + 128
                    emit 0x1ac09ea6: mem[mem[64] len _6142 + (32 * _6262) + (32 * _6718) + -mem[64] + 128], msg.sender
                else:
                    if 0 == totalSupply:
                        if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6148 = mem[64]
                        mem[mem[64]] = 64
                        _6271 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6721 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6148 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6148 + (32 * _6271) + 128 len 32 * _6721] = mem[floor32(('cd', 4).length) + 129 len 32 * _6721]
                        var106001 = _6721
                        var106002 = floor32(('cd', 4).length) + (32 * _6721) + 129
                        var106007 = _6148 + (32 * _6271) + (32 * _6721) + 128
                        emit 0x1ac09ea6: mem[mem[64] len _6148 + (32 * _6271) + (32 * _6721) + -mem[64] + 128], msg.sender
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6144 = mem[64]
                            mem[mem[64]] = 64
                            _6265 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6719 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6144 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6144 + (32 * _6265) + 128 len 32 * _6719] = mem[floor32(('cd', 4).length) + 129 len 32 * _6719]
                            var120001 = _6719
                            emit 0x1ac09ea6: mem[mem[64] len _6144 + (32 * _6265) + (32 * _6719) + -mem[64] + 128], msg.sender
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6146 = mem[64]
                            mem[mem[64]] = 64
                            _6268 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6720 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6146 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6146 + (32 * _6268) + 128 len 32 * _6720] = mem[floor32(('cd', 4).length) + 129 len 32 * _6720]
                            var121001 = _6720
                            emit 0x1ac09ea6: mem[mem[64] len _6146 + (32 * _6268) + (32 * _6720) + -mem[64] + 128], msg.sender
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6150 = mem[64]
                    mem[mem[64]] = 64
                    _6274 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6722 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6150 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6150 + (32 * _6274) + 128 len 32 * _6722] = mem[floor32(('cd', 4).length) + 129 len 32 * _6722]
                    var90001 = _6722
                    var90002 = floor32(('cd', 4).length) + (32 * _6722) + 129
                    var90007 = _6150 + (32 * _6274) + (32 * _6722) + 128
                    emit 0x1ac09ea6: mem[mem[64] len _6150 + (32 * _6274) + (32 * _6722) + -mem[64] + 128], msg.sender
                else:
                    if 0 == totalSupply:
                        if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6156 = mem[64]
                        mem[mem[64]] = 64
                        _6283 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6725 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6156 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6156 + (32 * _6283) + 128 len 32 * _6725] = mem[floor32(('cd', 4).length) + 129 len 32 * _6725]
                        var107001 = _6725
                        emit 0x1ac09ea6: mem[mem[64] len _6156 + (32 * _6283) + (32 * _6725) + -mem[64] + 128], msg.sender
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6152 = mem[64]
                            mem[mem[64]] = 64
                            _6277 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6723 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6152 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6152 + (32 * _6277) + 128 len 32 * _6723] = mem[floor32(('cd', 4).length) + 129 len 32 * _6723]
                            var121001 = _6723
                            emit 0x1ac09ea6: mem[mem[64] len _6152 + (32 * _6277) + (32 * _6723) + -mem[64] + 128], msg.sender
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6154 = mem[64]
                            mem[mem[64]] = 64
                            _6280 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6724 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6154 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6154 + (32 * _6280) + 128 len 32 * _6724] = mem[floor32(('cd', 4).length) + 129 len 32 * _6724]
                            var122001 = _6724
                            emit 0x1ac09ea6: mem[mem[64] len _6154 + (32 * _6280) + (32 * _6724) + -mem[64] + 128], msg.sender
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            sub_e7be12aa += (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6158 = mem[64]
                    mem[mem[64]] = 64
                    _6286 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6726 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6158 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6158 + (32 * _6286) + 128 len 32 * _6726] = mem[floor32(('cd', 4).length) + 129 len 32 * _6726]
                    var90001 = _6726
                    var90002 = floor32(('cd', 4).length) + (32 * _6726) + 129
                    var90007 = _6158 + (32 * _6286) + (32 * _6726) + 128
                    emit 0x1ac09ea6: mem[mem[64] len _6158 + (32 * _6286) + (32 * _6726) + -mem[64] + 128], msg.sender
                else:
                    if 0 == totalSupply:
                        if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6164 = mem[64]
                        mem[mem[64]] = 64
                        _6295 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6729 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6164 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6164 + (32 * _6295) + 128 len 32 * _6729] = mem[floor32(('cd', 4).length) + 129 len 32 * _6729]
                        var107001 = _6729
                        emit 0x1ac09ea6: mem[mem[64] len _6164 + (32 * _6295) + (32 * _6729) + -mem[64] + 128], msg.sender
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6160 = mem[64]
                            mem[mem[64]] = 64
                            _6289 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6727 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6160 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6160 + (32 * _6289) + 128 len 32 * _6727] = mem[floor32(('cd', 4).length) + 129 len 32 * _6727]
                            var121001 = _6727
                            emit 0x1ac09ea6: mem[mem[64] len _6160 + (32 * _6289) + (32 * _6727) + -mem[64] + 128], msg.sender
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6162 = mem[64]
                            mem[mem[64]] = 64
                            _6292 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6728 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6162 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6162 + (32 * _6292) + 128 len 32 * _6728] = mem[floor32(('cd', 4).length) + 129 len 32 * _6728]
                            var122001 = _6728
                            emit 0x1ac09ea6: mem[mem[64] len _6162 + (32 * _6292) + (32 * _6728) + -mem[64] + 128], msg.sender
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    if ('cd', 4).length != ('cd', 36).length:
                        revert with 0, 'MPSTK: Ids and amounts do not match'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                            revert with 0, 'MPSTK: Cannot stake 0'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 414
                        if not stor414[mem[(32 * idx) + 128]]:
                            revert with 0, 'MPSTK: Cannot stake this token'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                    s = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + (32 * mem[96]) + 228
                    while ('cd', 4).length < ('cd', 36).length:
                        mem[t] = mem[s]
                        s = ('cd', 4).length + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                    mem[t] = 4
                    mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                            revert with 0, 17
                        sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 421
                        if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                            revert with 0, 17
                        balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _6166 = mem[64]
                    mem[mem[64]] = 64
                    _6298 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _6730 = mem[floor32(('cd', 4).length) + 97]
                    mem[_6166 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                    mem[_6166 + (32 * _6298) + 128 len 32 * _6730] = mem[floor32(('cd', 4).length) + 129 len 32 * _6730]
                    var91001 = _6730
                    var91002 = floor32(('cd', 4).length) + (32 * _6730) + 129
                    var91007 = _6166 + (32 * _6298) + (32 * _6730) + 128
                    emit 0x1ac09ea6: mem[mem[64] len _6166 + (32 * _6298) + (32 * _6730) + -mem[64] + 128], msg.sender
                else:
                    if 0 == totalSupply:
                        if sub_e7be12aa < sub_1538947e[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and sub_e7be12aa - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                        mem[32] = 410
                        sub_1538947e[address(msg.sender)] = sub_e7be12aa
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'MPSTK: Ids and amounts do not match'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                revert with 0, 'MPSTK: Cannot stake 0'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 414
                            if not stor414[mem[(32 * idx) + 128]]:
                                revert with 0, 'MPSTK: Cannot stake this token'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                        s = 0
                        s = floor32(('cd', 4).length) + 129
                        t = mem[64] + (32 * mem[96]) + 228
                        while ('cd', 4).length < ('cd', 36).length:
                            mem[t] = mem[s]
                            s = ('cd', 4).length + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                        mem[t] = 4
                        mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len t + -mem[64] + 60]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                revert with 0, 17
                            sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 0, 50
                            if idx >= mem[96]:
                                revert with 0, 50
                            if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 421
                            if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                revert with 0, 17
                            balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _6172 = mem[64]
                        mem[mem[64]] = 64
                        _6307 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var103001 = mem[96]
                        var103002 = (32 * mem[96]) + 128
                        var103007 = mem[64] + (32 * mem[96]) + 96
                        mem[mem[64] + 32] = (32 * mem[96]) + 96
                        _6733 = mem[floor32(('cd', 4).length) + 97]
                        mem[_6172 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                        mem[_6172 + (32 * _6307) + 128 len 32 * _6733] = mem[floor32(('cd', 4).length) + 129 len 32 * _6733]
                        emit 0x1ac09ea6: mem[mem[64] len _6172 + (32 * _6307) + (32 * _6733) + -mem[64] + 128], msg.sender
                    else:
                        if block.timestamp >= periodFinish:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6170 = mem[64]
                            mem[mem[64]] = 64
                            _6304 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6732 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6170 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6170 + (32 * _6304) + 128 len 32 * _6732] = mem[floor32(('cd', 4).length) + 129 len 32 * _6732]
                            emit 0x1ac09ea6: mem[mem[64] len _6170 + (32 * _6304) + (32 * _6732) + -mem[64] + 128], msg.sender
                        else:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if sub_e7be12aa > !((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) < sub_1538947e[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and sub_e7be12aa + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply) - sub_1538947e[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            rewards[address(msg.sender)] = (sub_e7be12aa * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (sub_1538947e[address(msg.sender)] * balanceOf[address(msg.sender)]) + rewards[address(msg.sender)]
                            mem[32] = 410
                            sub_1538947e[address(msg.sender)] = sub_e7be12aa
                            if ('cd', 4).length != ('cd', 36).length:
                                revert with 0, 'MPSTK: Ids and amounts do not match'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake 0'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] <= 0:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 414
                                if not stor414[mem[(32 * idx) + 128]]:
                                    revert with 0, 'MPSTK: Cannot stake this token'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = 160
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 262] = ('cd', 4).length
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 294 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 198] = (32 * ('cd', 4).length) + 192
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
                            s = 0
                            s = floor32(('cd', 4).length) + 129
                            t = mem[64] + (32 * mem[96]) + 228
                            while ('cd', 4).length < ('cd', 36).length:
                                mem[t] = mem[s]
                                s = ('cd', 4).length + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 230] = t + -floor32(('cd', 4).length) + -floor32(('cd', 36).length) - 102
                            mem[t] = 4
                            mem[t + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len t + -mem[64] + 60]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < mem[96]:
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
                                    revert with 0, 17
                                sub_e068cb1e[address(msg.sender)][mem[(32 * idx) + 128]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                if totalSupply > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                totalSupply += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 0, 50
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if sub_efa17d1a[mem[(32 * idx) + 128]] and mem[(32 * idx) + floor32(('cd', 4).length) + 129] > -1 / sub_efa17d1a[mem[(32 * idx) + 128]]:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 421
                                if balanceOf[msg.sender] > !(sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
                                    revert with 0, 17
                                balanceOf[msg.sender] += sub_efa17d1a[mem[(32 * idx) + 128]] * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _6168 = mem[64]
                            mem[mem[64]] = 64
                            _6301 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 96
                            _6731 = mem[floor32(('cd', 4).length) + 97]
                            mem[_6168 + (32 * mem[96]) + 96] = mem[floor32(('cd', 4).length) + 97]
                            mem[_6168 + (32 * _6301) + 128 len 32 * _6731] = mem[floor32(('cd', 4).length) + 129 len 32 * _6731]
                            var122001 = _6731
                            emit 0x1ac09ea6: mem[mem[64] len _6168 + (32 * _6301) + (32 * _6731) + -mem[64] + 128], msg.sender
    stor251 = 1
}



}
