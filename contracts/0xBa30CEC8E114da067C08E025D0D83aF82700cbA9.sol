contract main {




// =====================  Runtime code  =====================


const decimals = 18

const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of struct roleAdmin;
address owner;
mapping of uint8 stor7;
address deadWalletAddress;
uint256 taxFee;
uint256 burnFee;
uint256 stor11; offset 1
uint256 sub_79f34635;
uint256 sub_445e07a4;
uint8 swapEnabled; offset 160
uint128 stor13; offset 160
address _marketingWalletAddress;
uint256 sub_48a6a76f;
address tokenBAddress;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address sub_f6e1c1c4Address;
uint256 launchedAt;
uint256 launchedAtTime;
uint256 sub_071fb5dd;
mapping of uint8 stor22;
uint256 maxBuy;
uint256 maxSell;
array of struct stor25;
array of struct stor26;
uint8 stor27;

function sub_071fb5dd(?) payable {
    return sub_071fb5dd
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_445e07a4(?) payable {
    return sub_445e07a4
}

function sub_48a6a76f(?) payable {
    return sub_48a6a76f
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function tokenB() payable {
    return tokenBAddress
}

function isTaxExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function swapEnabled() payable {
    return bool(swapEnabled)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBuy() payable {
    return maxBuy
}

function sub_79f34635(?) payable {
    return sub_79f34635
}

function deadWallet() payable {
    return deadWalletAddress
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _marketingWallet() payable {
    return _marketingWalletAddress
}

function sub_97c79523(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function launchedAtTime() payable {
    return launchedAtTime
}

function taxFee() payable {
    return taxFee
}

function maxSell() payable {
    return maxSell
}

function launchedAt() payable {
    return launchedAt
}

function sub_c703a3b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f6e1c1c4(?) payable {
    return sub_f6e1c1c4Address
}

function burnFee() payable {
    return burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function updateAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0:
            roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0 = 0
            emit RoleRevoked(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
    else:
        if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0:
            roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0 = 1
            emit RoleGranted(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
}

function sub_9991c39b(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_48a6a76f = arg1
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

function updateMaxBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        maxBuy = arg1
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

function updateMaxSell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        maxSell = arg1
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

function sub_e9c002dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        tokenBAddress = address(arg1)
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

function updateSwapEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor13 = Mask(96, 0, arg1)
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

function sub_b92787e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor7[address(arg1)] = uint8(bool(arg2))
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

function sub_e3cb33a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor22[address(arg1)] = uint8(bool(arg2))
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

function sub_4a6420a7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        uniswapV2RouterAddress = address(arg1)
        uniswapV2PairAddress = address(arg2)
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

function withdraw() payable {
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        require ext_code.size(sub_f6e1c1c4Address)
        call sub_f6e1c1c4Address.withdraw(address arg1) with:
             gas gas_remaining wei
            args tokenBAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function Sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    uniswapV2RouterAddress = arg1
    tokenBAddress = arg2
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).0xc9c65396 with:
         gas gas_remaining wei
        args this.address, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function transferForeignToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_98f5be87(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while (uint255(stor25.length) * 0.5) + 31 / 32 > idx:
                stor25[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while stor25.length.field_1 + 31 / 32 > idx:
                stor25[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor26[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor26.length = 0
            idx = 0
            while (uint255(stor26.length) * 0.5) + 31 / 32 > idx:
                stor26[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor26[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor26.length = 0
            idx = 0
            while stor26.length.field_1 + 31 / 32 > idx:
                stor26[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function name() payable {
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor25.length):
            if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor25.length):
                if 31 < uint255(stor25.length) * 0.5:
                    mem[128] = uint256(stor25.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor25.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)])
                mem[128] = 256 * stor25.length.field_8
        else:
            if bool(stor25.length) == stor25.length.field_1 < 32:
                revert with 0, 34
            if stor25.length.field_1:
                if 31 < stor25.length.field_1:
                    mem[128] = uint256(stor25.field_0)
                    idx = 128
                    s = 0
                    while stor25.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)])
                mem[128] = 256 * stor25.length.field_8
        mem[ceil32(uint255(stor25.length) * 0.5) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
        if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
            mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)], mem[(2 * ceil32(uint255(stor25.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor25.length) * 0.5)]), 
    if bool(stor25.length) == stor25.length.field_1 < 32:
        revert with 0, 34
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor25.length):
            if 31 < uint255(stor25.length) * 0.5:
                mem[128] = uint256(stor25.field_0)
                idx = 128
                s = 0
                while (uint255(stor25.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)])
            mem[128] = 256 * stor25.length.field_8
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 0, 34
        if stor25.length.field_1:
            if 31 < stor25.length.field_1:
                mem[128] = uint256(stor25.field_0)
                idx = 128
                s = 0
                while stor25.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)])
            mem[128] = 256 * stor25.length.field_8
    mem[ceil32(stor25.length.field_1) + 192 len ceil32(stor25.length.field_1)] = mem[128 len ceil32(stor25.length.field_1)]
    if ceil32(stor25.length.field_1) > stor25.length.field_1:
        mem[stor25.length.field_1 + ceil32(stor25.length.field_1) + 192] = 0
    return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)], mem[(2 * ceil32(stor25.length.field_1)) + 192 len 2 * ceil32(stor25.length.field_1)]), 
}

function symbol() payable {
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 < uint255(stor26.length) * 0.5:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * stor26.length.field_8
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 < stor26.length.field_1:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while stor26.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * stor26.length.field_8
        mem[ceil32(uint255(stor26.length) * 0.5) + 192 len ceil32(uint255(stor26.length) * 0.5)] = mem[128 len ceil32(uint255(stor26.length) * 0.5)]
        if ceil32(uint255(stor26.length) * 0.5) > uint255(stor26.length) * 0.5:
            mem[(uint255(stor26.length) * 0.5) + ceil32(uint255(stor26.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor26.length) * 0.5)]), 
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 < uint255(stor26.length) * 0.5:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while (uint255(stor26.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)])
            mem[128] = 256 * stor26.length.field_8
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if stor26.length.field_1:
            if 31 < stor26.length.field_1:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while stor26.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)])
            mem[128] = 256 * stor26.length.field_8
    mem[ceil32(stor26.length.field_1) + 192 len ceil32(stor26.length.field_1)] = mem[128 len ceil32(stor26.length.field_1)]
    if ceil32(stor26.length.field_1) > stor26.length.field_1:
        mem[stor26.length.field_1 + ceil32(stor26.length.field_1) + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 192 len 2 * ceil32(stor26.length.field_1)]), 
}

function swapAll() payable {
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
    if not stor27:
        stor27 = 1
        if balanceOf[this.address]:
            if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not taxFee:
                revert with 0, 18
            if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                revert with 0, 17
            mem[128] = this.address
            mem[160] = tokenBAddress
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
            emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
            mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
            idx = 0
            s = 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_f6e1c1c4Address
            require return_data.size >= 32
            require ext_code.size(sub_f6e1c1c4Address)
            call sub_f6e1c1c4Address.withdraw(address arg1) with:
                 gas gas_remaining wei
                args tokenBAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if stor11 > !sub_445e07a4:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not stor11 + sub_445e07a4:
                    revert with 0, 18
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                call tokenBAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        stor27 = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor7[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor7[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if uniswapV2PairAddress == msg.sender:
                if arg2 > maxBuy:
                    revert with 0, 'maxBuy'
            else:
                if uniswapV2PairAddress == arg1:
                    if arg2 > maxSell:
                        revert with 0, 'maxSell'
            if stor22[address(msg.sender)]:
                revert with 0, 'caller is bot'
            if taxFee > 0:
                if arg2 and taxFee > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 * taxFee / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2 * taxFee / 1000
                if balanceOf[this.address] > !(arg2 * taxFee / 1000):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * taxFee / 1000
                emit Transfer((arg2 * taxFee / 1000), msg.sender, this.address);
                if arg2 and burnFee > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not deadWalletAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 * burnFee / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2 * burnFee / 1000
                if balanceOf[stor8] > !(arg2 * burnFee / 1000):
                    revert with 0, 17
                balanceOf[stor8] += arg2 * burnFee / 1000
                emit Transfer((arg2 * burnFee / 1000), msg.sender, deadWalletAddress);
                if arg2 < arg2 * taxFee / 1000:
                    revert with 0, 17
                if arg2 - (arg2 * taxFee / 1000) < arg2 * burnFee / 1000:
                    revert with 0, 17
                if balanceOf[this.address] <= sub_48a6a76f:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    if stor27:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        if uniswapV2PairAddress == msg.sender:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            if not swapEnabled:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                stor27 = 1
                                if not balanceOf[this.address]:
                                    stor27 = 0
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not taxFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = tokenBAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                    emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                    idx = 0
                                    s = 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args sub_f6e1c1c4Address
                                    require return_data.size >= 32
                                    require ext_code.size(sub_f6e1c1c4Address)
                                    call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                         gas gas_remaining wei
                                        args tokenBAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if stor11 > !sub_445e07a4:
                                            revert with 0, 17
                                        if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not stor11 + sub_445e07a4:
                                            revert with 0, 18
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                        emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                        call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                    stor27 = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'taxFee', 9))), 1000)), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'burnFee', 10))), 1000))))
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 1000) + (arg2 * burnFee / 1000)
                if balanceOf[arg1] > !(arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)
                emit Transfer((arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)), msg.sender, arg1);
            else:
                if burnFee <= 0:
                    if balanceOf[this.address] <= sub_48a6a76f:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        if stor27:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            if uniswapV2PairAddress == msg.sender:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                if not swapEnabled:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    stor27 = 1
                                    if not balanceOf[this.address]:
                                        stor27 = 0
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not taxFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = tokenBAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        idx = 0
                                        s = 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args sub_f6e1c1c4Address
                                        require return_data.size >= 32
                                        require ext_code.size(sub_f6e1c1c4Address)
                                        call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                             gas gas_remaining wei
                                            args tokenBAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if stor11 > !sub_445e07a4:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not stor11 + sub_445e07a4:
                                                revert with 0, 18
                                            call tokenBAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                            emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                            call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                 gas gas_remaining wei
                                                args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                        stor27 = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('param', 'arg2'))
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and taxFee > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * taxFee / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * taxFee / 1000
                    if balanceOf[this.address] > !(arg2 * taxFee / 1000):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * taxFee / 1000
                    emit Transfer((arg2 * taxFee / 1000), msg.sender, this.address);
                    if arg2 and burnFee > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not deadWalletAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * burnFee / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * burnFee / 1000
                    if balanceOf[stor8] > !(arg2 * burnFee / 1000):
                        revert with 0, 17
                    balanceOf[stor8] += arg2 * burnFee / 1000
                    emit Transfer((arg2 * burnFee / 1000), msg.sender, deadWalletAddress);
                    if arg2 < arg2 * taxFee / 1000:
                        revert with 0, 17
                    if arg2 - (arg2 * taxFee / 1000) < arg2 * burnFee / 1000:
                        revert with 0, 17
                    if balanceOf[this.address] <= sub_48a6a76f:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        if stor27:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            if uniswapV2PairAddress == msg.sender:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                if not swapEnabled:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    stor27 = 1
                                    if not balanceOf[this.address]:
                                        stor27 = 0
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not taxFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = tokenBAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        idx = 0
                                        s = 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args sub_f6e1c1c4Address
                                        require return_data.size >= 32
                                        require ext_code.size(sub_f6e1c1c4Address)
                                        call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                             gas gas_remaining wei
                                            args tokenBAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if stor11 > !sub_445e07a4:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not stor11 + sub_445e07a4:
                                                revert with 0, 18
                                            call tokenBAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                            emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                            call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                 gas gas_remaining wei
                                                args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                        stor27 = 0
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'taxFee', 9))), 1000)), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'burnFee', 10))), 1000))))
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 1000) + (arg2 * burnFee / 1000)
                    if balanceOf[arg1] > !(arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)
                    emit Transfer((arg2 - (arg2 * taxFee / 1000) - (arg2 * burnFee / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor7[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if stor7[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if uniswapV2PairAddress == arg1:
                if arg3 > maxBuy:
                    revert with 0, 'maxBuy'
            else:
                if uniswapV2PairAddress == arg2:
                    if arg3 > maxSell:
                        revert with 0, 'maxSell'
            if stor22[address(arg1)]:
                revert with 0, 'caller is bot'
            if taxFee > 0:
                if arg3 and taxFee > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3 * taxFee / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3 * taxFee / 1000
                if balanceOf[this.address] > !(arg3 * taxFee / 1000):
                    revert with 0, 17
                balanceOf[this.address] += arg3 * taxFee / 1000
                emit Transfer((arg3 * taxFee / 1000), arg1, this.address);
                if arg3 and burnFee > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not deadWalletAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3 * burnFee / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3 * burnFee / 1000
                if balanceOf[stor8] > !(arg3 * burnFee / 1000):
                    revert with 0, 17
                balanceOf[stor8] += arg3 * burnFee / 1000
                emit Transfer((arg3 * burnFee / 1000), arg1, deadWalletAddress);
                if arg3 < arg3 * taxFee / 1000:
                    revert with 0, 17
                if arg3 - (arg3 * taxFee / 1000) < arg3 * burnFee / 1000:
                    revert with 0, 17
                if balanceOf[this.address] <= sub_48a6a76f:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                    if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                    emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if stor27:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                        if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                        emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if uniswapV2PairAddress == arg1:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                            if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                            emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if not swapEnabled:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                stor27 = 1
                                if not balanceOf[this.address]:
                                    stor27 = 0
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                    emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not taxFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = tokenBAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                    emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                    idx = 0
                                    s = 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args sub_f6e1c1c4Address
                                    require return_data.size >= 32
                                    require ext_code.size(sub_f6e1c1c4Address)
                                    call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                         gas gas_remaining wei
                                        args tokenBAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    staticcall tokenBAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if stor11 > !sub_445e07a4:
                                            revert with 0, 17
                                        if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not stor11 + sub_445e07a4:
                                            revert with 0, 18
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                        emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                        call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                             gas gas_remaining wei
                                            args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                    stor27 = 0
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                    emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
            else:
                if burnFee <= 0:
                    if balanceOf[this.address] <= sub_48a6a76f:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if stor27:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if uniswapV2PairAddress == arg1:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if not swapEnabled:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    stor27 = 1
                                    if not balanceOf[this.address]:
                                        stor27 = 0
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not taxFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = tokenBAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        idx = 0
                                        s = 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args sub_f6e1c1c4Address
                                        require return_data.size >= 32
                                        require ext_code.size(sub_f6e1c1c4Address)
                                        call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                             gas gas_remaining wei
                                            args tokenBAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if stor11 > !sub_445e07a4:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not stor11 + sub_445e07a4:
                                                revert with 0, 18
                                            call tokenBAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                            emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                            call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                 gas gas_remaining wei
                                                args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                        stor27 = 0
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                else:
                    if arg3 and taxFee > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * taxFee / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * taxFee / 1000
                    if balanceOf[this.address] > !(arg3 * taxFee / 1000):
                        revert with 0, 17
                    balanceOf[this.address] += arg3 * taxFee / 1000
                    emit Transfer((arg3 * taxFee / 1000), arg1, this.address);
                    if arg3 and burnFee > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not deadWalletAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * burnFee / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * burnFee / 1000
                    if balanceOf[stor8] > !(arg3 * burnFee / 1000):
                        revert with 0, 17
                    balanceOf[stor8] += arg3 * burnFee / 1000
                    emit Transfer((arg3 * burnFee / 1000), arg1, deadWalletAddress);
                    if arg3 < arg3 * taxFee / 1000:
                        revert with 0, 17
                    if arg3 - (arg3 * taxFee / 1000) < arg3 * burnFee / 1000:
                        revert with 0, 17
                    if balanceOf[this.address] <= sub_48a6a76f:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                        if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                        emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if stor27:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                            if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                            emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if uniswapV2PairAddress == arg1:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if not swapEnabled:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                        revert with 0, 17
                                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                    emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    stor27 = 1
                                    if not balanceOf[this.address]:
                                        stor27 = 0
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                        emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        if balanceOf[this.address] and stor11 > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not taxFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * stor11 / taxFee:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = tokenBAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor16] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)), this.address, uniswapV2RouterAddress);
                                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[196] = balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee)
                                        idx = 0
                                        s = 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * stor11 / taxFee), 0, 160, sub_f6e1c1c4Address, block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args sub_f6e1c1c4Address
                                        require return_data.size >= 32
                                        require ext_code.size(sub_f6e1c1c4Address)
                                        call sub_f6e1c1c4Address.withdraw(address arg1) with:
                                             gas gas_remaining wei
                                            args tokenBAddress
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall tokenBAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if stor11 > !sub_445e07a4:
                                                revert with 0, 17
                                            if ext_call.return_data[0] and sub_445e07a4 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not stor11 + sub_445e07a4:
                                                revert with 0, 18
                                            call tokenBAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args _marketingWalletAddress, ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor16] = balanceOf[this.address] * stor11 / taxFee
                                            emit Approval((balanceOf[this.address] * stor11 / taxFee), this.address, uniswapV2RouterAddress);
                                            call tokenBAddress.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args uniswapV2RouterAddress, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            call uniswapV2RouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                 gas gas_remaining wei
                                                args this.address, tokenBAddress, balanceOf[this.address] * stor11 / taxFee, ext_call.return_data[0] - (ext_call.return_data[0] * sub_445e07a4 / stor11 + sub_445e07a4), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                        stor27 = 0
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 1000) + (arg3 * burnFee / 1000)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)
                                        emit Transfer((arg3 - (arg3 * taxFee / 1000) - (arg3 * burnFee / 1000)), arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
