contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of struct sub_1de20bcf;
mapping of uint256 sub_9c29583d;
mapping of uint256 sub_69639e2a;
mapping of uint256 sub_4c65e47a;
mapping of uint256 sub_d2c121a7;
mapping of address sub_8fadc90a;
mapping of address sub_9fc1552c;
mapping of address sub_6684d38c;
mapping of uint8 stor9;
mapping of uint256 sub_b72de270;
mapping of uint256 sub_8fc32198;
mapping of uint256 allowance;
uint256 stor13;
uint8 sub_ac0163b9;
uint256 sub_a114f7cc;
uint256 totalSupply;
mapping of uint8 stor17;
mapping of uint8 stor18;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1de20bcf(?) {
    return sub_1de20bcf[arg1][0 len sub_1de20bcf[arg1].length].field_0
}

function decimals() {
    return decimals
}

function getProposalStatus(uint256 arg1) {
    return bool(stor9[arg1])
}

function sub_4c65e47a(?) {
    return sub_4c65e47a[arg1]
}

function sub_6684d38c(?) {
    return sub_6684d38c[arg1]
}

function sub_69639e2a(?) {
    return sub_69639e2a[arg1]
}

function sub_6c779213(?) {
    require arg1
    return bool(stor18[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8fadc90a(?) {
    return sub_8fadc90a[arg1]
}

function sub_8fc32198(?) {
    return sub_8fc32198[arg1][1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_95f67777(?) {
    return sub_8fc32198[arg1][0]
}

function sub_9c29583d(?) {
    return sub_9c29583d[arg1]
}

function sub_9fc1552c(?) {
    return sub_9fc1552c[arg1]
}

function sub_a114f7cc(?) {
    return sub_a114f7cc
}

function isMinter(address arg1) {
    require arg1
    return bool(stor17[address(arg1)])
}

function sub_ac0163b9(?) {
    return bool(sub_ac0163b9)
}

function sub_b72de270(?) {
    return sub_b72de270[address(arg1)][arg2][arg3]
}

function sub_d2c121a7(?) {
    return sub_d2c121a7[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_8218a6e9(?) {
    require msg.sender
    require stor18[address(msg.sender)]
    stor18[address(msg.sender)] = 0
    emit 0x2a21e4dd: msg.sender
}

function renounceMinter() {
    require msg.sender
    require stor17[address(msg.sender)]
    stor17[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f1d66b6f(?) {
    require msg.sender
    require stor18[address(msg.sender)]
    require arg1
    require not stor18[address(arg1)]
    stor18[address(arg1)] = 1
    emit 0x484569dc: arg1
}

function addMinter(address arg1) {
    require msg.sender
    require stor17[address(msg.sender)]
    require arg1
    require not stor17[address(arg1)]
    stor17[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function sub_e5bd9743(?) {
    require sub_8fc32198[arg1][1] <= totalSupply
    require sub_8fc32198[arg1][0] <= totalSupply - sub_8fc32198[arg1][1]
    return (totalSupply - sub_8fc32198[arg1][1] - sub_8fc32198[arg1][0])
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function createProposal(string arg1) {
    require msg.sender
    require stor18[address(msg.sender)]
    require msg.sender
    require stor13 + 1 >= stor13
    sub_1de20bcf[stor13 + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor13++
    sub_9fc1552c[stor13 + 1] = msg.sender
    stor9[stor13 + 1] = 0
    return 1
}

function sub_de0982f4(?) {
    require sub_b72de270[address(arg1)][arg2][1] <= balanceOf[address(arg1)]
    require sub_b72de270[address(arg1)][arg2][0] <= balanceOf[address(arg1)] - sub_b72de270[address(arg1)][arg2][1]
    return (balanceOf[address(arg1)] - sub_b72de270[address(arg1)][arg2][1] - sub_b72de270[address(arg1)][arg2][0])
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor17[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if sub_ac0163b9:
        if sub_b72de270[address(msg.sender)][stor15][1] > 0:
            require arg2 <= sub_8fc32198[stor15][1]
            sub_8fc32198[stor15][1] -= arg2
            sub_b72de270[address(msg.sender)][stor15][1] = balanceOf[address(msg.sender)]
        if sub_b72de270[address(msg.sender)][stor15][0] > 0:
            require arg2 <= sub_8fc32198[stor15][0]
            sub_8fc32198[stor15][0] -= arg2
            sub_b72de270[address(msg.sender)][stor15][0] = balanceOf[address(msg.sender)]
        if sub_b72de270[address(arg1)][stor15][1] > 0:
            require sub_8fc32198[stor15][1] + arg2 >= sub_8fc32198[stor15][1]
            sub_8fc32198[stor15][1] += arg2
            sub_b72de270[address(arg1)][stor15][1] = balanceOf[address(arg1)]
        if sub_b72de270[address(arg1)][stor15][0] > 0:
            require sub_8fc32198[stor15][0] + arg2 >= sub_8fc32198[stor15][0]
            sub_8fc32198[stor15][0] += arg2
            sub_b72de270[address(arg1)][stor15][0] = balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if sub_ac0163b9:
        if sub_b72de270[address(arg1)][stor15][1] > 0:
            require arg3 <= sub_8fc32198[stor15][1]
            sub_8fc32198[stor15][1] -= arg3
            sub_b72de270[address(arg1)][stor15][1] = balanceOf[address(arg1)]
        if sub_b72de270[address(arg1)][stor15][0] > 0:
            require arg3 <= sub_8fc32198[stor15][0]
            sub_8fc32198[stor15][0] -= arg3
            sub_b72de270[address(arg1)][stor15][0] = balanceOf[address(arg1)]
        if sub_b72de270[address(arg2)][stor15][1] > 0:
            require sub_8fc32198[stor15][1] + arg3 >= sub_8fc32198[stor15][1]
            sub_8fc32198[stor15][1] += arg3
            sub_b72de270[address(arg2)][stor15][1] = balanceOf[address(arg2)]
        if sub_b72de270[address(arg2)][stor15][0] > 0:
            require sub_8fc32198[stor15][0] + arg3 >= sub_8fc32198[stor15][0]
            sub_8fc32198[stor15][0] += arg3
            sub_b72de270[address(arg2)][stor15][0] = balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_47e2b581(?) {
    require msg.sender
    require balanceOf[address(msg.sender)]
    require stor9[arg1]
    sub_b72de270[address(msg.sender)][arg1][arg2] = balanceOf[address(msg.sender)]
    if not arg2:
        if sub_b72de270[address(msg.sender)][arg1][1] > 0:
            require balanceOf[address(msg.sender)] <= sub_8fc32198[arg1][1]
            sub_8fc32198[arg1][1] -= balanceOf[address(msg.sender)]
        if sub_8fc32198[arg1][0] <= 0:
            sub_8fc32198[arg1][0] = balanceOf[address(msg.sender)]
        else:
            require sub_8fc32198[arg1][0] + balanceOf[address(msg.sender)] >= sub_8fc32198[arg1][0]
            sub_8fc32198[arg1][0] += balanceOf[address(msg.sender)]
        sub_b72de270[address(msg.sender)][arg1][1] = 0
    else:
        if sub_b72de270[address(msg.sender)][arg1][0] > 0:
            require balanceOf[address(msg.sender)] <= sub_8fc32198[arg1][0]
            sub_8fc32198[arg1][0] -= balanceOf[address(msg.sender)]
        if sub_8fc32198[arg1][1] <= 0:
            sub_8fc32198[arg1][1] = balanceOf[address(msg.sender)]
        else:
            require sub_8fc32198[arg1][1] + balanceOf[address(msg.sender)] >= sub_8fc32198[arg1][1]
            sub_8fc32198[arg1][1] += balanceOf[address(msg.sender)]
        sub_b72de270[address(msg.sender)][arg1][0] = 0
        if not arg2:
            if sub_b72de270[address(msg.sender)][arg1][1] > 0:
                require balanceOf[address(msg.sender)] <= sub_8fc32198[arg1][1]
                sub_8fc32198[arg1][1] -= balanceOf[address(msg.sender)]
            if sub_8fc32198[arg1][0] <= 0:
                sub_8fc32198[arg1][0] = balanceOf[address(msg.sender)]
            else:
                require sub_8fc32198[arg1][0] + balanceOf[address(msg.sender)] >= sub_8fc32198[arg1][0]
                sub_8fc32198[arg1][0] += balanceOf[address(msg.sender)]
            sub_b72de270[address(msg.sender)][arg1][1] = 0
    emit ProposalUpdated(arg1, arg2, balanceOf[address(msg.sender)], msg.sender);
    return 1
}

function openProposal(uint256 arg1) {
    require msg.sender
    require stor18[address(msg.sender)]
    require msg.sender
    require bool(sub_ac0163b9) != 1
    mem[32] = 1
    mem[96] = sub_1de20bcf[arg1].length
    mem[0] = sha3(arg1, 1)
    mem[128] = sub_1de20bcf[arg1].field_0
    idx = 128
    s = 0
    while sub_1de20bcf[arg1].length + 96 > idx:
        mem[idx + 32] = sub_1de20bcf[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_1de20bcf[arg1].length) + 128] = 0
    mem[ceil32(sub_1de20bcf[arg1].length) + 192 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 160] = 0
    mem[64] = ceil32(sub_1de20bcf[arg1].length) + 192
    mem[ceil32(sub_1de20bcf[arg1].length) + 192 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 224 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 224 len floor32(sub_1de20bcf[arg1].length)] = mem[128 len floor32(sub_1de20bcf[arg1].length)]
    mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + 224] = mem[floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 160 len sub_1de20bcf[arg1].length % 32] or Mask(8 * -sub_1de20bcf[arg1].length % 32 + 32, -(8 * -sub_1de20bcf[arg1].length % 32 + 32) + 256, mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + 224])
    mem[ceil32(sub_1de20bcf[arg1].length) + 192] = sub_1de20bcf[arg1].length
    mem[64] = sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224
    mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224 len floor32(sub_1de20bcf[arg1].length)] = mem[128 len floor32(sub_1de20bcf[arg1].length)]
    mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 256 len sub_1de20bcf[arg1].length % 32] = mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 256 len sub_1de20bcf[arg1].length % 32]
    require sha3(mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224 len sub_1de20bcf[arg1].length]) != sha3(None)
    sub_a114f7cc = arg1
    sub_ac0163b9 = 1
    sub_6684d38c[arg1] = msg.sender
    stor9[arg1] = 1
    return 1
}

function closeProposal(uint256 arg1) {
    require msg.sender
    require stor18[address(msg.sender)]
    require msg.sender
    require bool(sub_ac0163b9) == 1
    mem[32] = 1
    mem[96] = sub_1de20bcf[arg1].length
    mem[0] = sha3(arg1, 1)
    mem[128] = sub_1de20bcf[arg1].field_0
    idx = 128
    s = 0
    while sub_1de20bcf[arg1].length + 96 > idx:
        mem[idx + 32] = sub_1de20bcf[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_1de20bcf[arg1].length) + 128] = 0
    mem[ceil32(sub_1de20bcf[arg1].length) + 192 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 160] = 0
    mem[64] = ceil32(sub_1de20bcf[arg1].length) + 192
    mem[ceil32(sub_1de20bcf[arg1].length) + 192 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 224 len 0] = None
    mem[ceil32(sub_1de20bcf[arg1].length) + 224 len floor32(sub_1de20bcf[arg1].length)] = mem[128 len floor32(sub_1de20bcf[arg1].length)]
    mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + 224] = mem[floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 160 len sub_1de20bcf[arg1].length % 32] or Mask(8 * -sub_1de20bcf[arg1].length % 32 + 32, -(8 * -sub_1de20bcf[arg1].length % 32 + 32) + 256, mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + 224])
    mem[ceil32(sub_1de20bcf[arg1].length) + 192] = sub_1de20bcf[arg1].length
    mem[64] = sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224
    mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224 len floor32(sub_1de20bcf[arg1].length)] = mem[128 len floor32(sub_1de20bcf[arg1].length)]
    mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 256 len sub_1de20bcf[arg1].length % 32] = mem[ceil32(sub_1de20bcf[arg1].length) + floor32(sub_1de20bcf[arg1].length) + -sub_1de20bcf[arg1].length % 32 + 256 len sub_1de20bcf[arg1].length % 32]
    require sha3(mem[sub_1de20bcf[arg1].length + ceil32(sub_1de20bcf[arg1].length) + 224 len sub_1de20bcf[arg1].length]) != sha3(None)
    require sub_a114f7cc == arg1
    stor9[arg1] = 0
    sub_a114f7cc = 0
    sub_ac0163b9 = 0
    sub_8fadc90a[arg1] = msg.sender
    sub_9c29583d[arg1] = sub_8fc32198[arg1][1]
    sub_69639e2a[arg1] = sub_8fc32198[arg1][0]
    require sub_8fc32198[arg1][1] <= totalSupply
    require sub_8fc32198[arg1][0] <= totalSupply - sub_8fc32198[arg1][1]
    sub_4c65e47a[arg1] = totalSupply - sub_8fc32198[arg1][1] - sub_8fc32198[arg1][0]
    sub_d2c121a7[arg1] = totalSupply
    return 1
}

function transferMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _217 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        if sub_ac0163b9:
            if sub_b72de270[address(msg.sender)][stor15][1] > 0:
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_8fc32198[stor15][1]
                sub_8fc32198[stor15][1] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                sub_b72de270[address(msg.sender)][stor15][1] = balanceOf[address(msg.sender)]
            if sub_b72de270[address(msg.sender)][stor15][0] > 0:
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_8fc32198[stor15][0]
                sub_8fc32198[stor15][0] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                sub_b72de270[address(msg.sender)][stor15][0] = balanceOf[address(msg.sender)]
            if sub_b72de270[address(mem[(32 * idx) + 128])][stor15][1] > 0:
                require sub_8fc32198[stor15][1] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_8fc32198[stor15][1]
                sub_8fc32198[stor15][1] += mem[(32 * idx) + (32 * arg1.length) + 160]
                sub_b72de270[address(mem[(32 * idx) + 128])][stor15][1] = balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = 0
            mem[32] = sha3(sub_a114f7cc, sha3(address(mem[(32 * idx) + 128]), 10))
            if sub_b72de270[address(mem[(32 * idx) + 128])][stor15][0] > 0:
                require sub_8fc32198[stor15][0] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_8fc32198[stor15][0]
                sub_8fc32198[stor15][0] += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[0] = 0
                mem[32] = sha3(sub_a114f7cc, sha3(address(mem[(32 * idx) + 128]), 10))
                sub_b72de270[address(mem[(32 * idx) + 128])][stor15][0] = balanceOf[address(mem[(32 * idx) + 128])]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_217));
        idx = idx + 1
        continue 
    return 1
}



}
