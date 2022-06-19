contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0[address(msg.sender)] = 1000000000000000000000 * 10^18
    stor2 = 1000000000000000000000 * 10^18
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'DUSK' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 1
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'DUSK' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[855 len 3257]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert 
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 228 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25050 wei
            args msg.sender, arg2, address(this.address), arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25050 wei
            args msg.sender, arg2, address(this.address), arg3[all], mem[ceil32(arg3.length) + arg3.length + 228 len -(arg3.length % 32) + 32]
    require ext_call.success
    return 1
}



}
