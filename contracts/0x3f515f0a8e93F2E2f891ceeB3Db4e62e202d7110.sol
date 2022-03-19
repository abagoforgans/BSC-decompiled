contract main {




// =====================  Runtime code  =====================


#
#  - decreaseAllowance(address arg1, uint256 arg2)
#
const initialSupply = 100 * 10^6


address owner;
array of struct stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of uint256 sub_b7c6fe36;
uint8 stor8;
array of struct stor10;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 unused;
uint256 sub_0a72fb86;
uint256 validationPrice;
uint256 sub_f8bbf27e;
address validationWalletAddress;
address stor21;
address nftContractAddress;
address sub_4138ab4aAddress;
mapping of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function sub_0a72fb86(?) {
    return sub_0a72fb86
}

function totalSupply() {
    return totalSupply
}

function unused() {
    return unused
}

function decimals() {
    return decimals
}

function verifyPublisher(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function sub_4138ab4a(?) {
    return sub_4138ab4aAddress
}

function validationWallet() {
    return validationWalletAddress
}

function paused() {
    return bool(uint8(stor1.length.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function validationPrice() {
    return validationPrice
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_b7c6fe36(?) {
    return sub_b7c6fe36[arg1][0 len sub_b7c6fe36[arg1].length]
}

function nftContract() {
    return nftContractAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f8bbf27e(?) {
    return sub_f8bbf27e
}

function verifyWallet(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function setPublic(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    stor8 = uint8(arg1)
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    sub_f8bbf27e = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    validationPrice = arg1
}

function setWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    validationWalletAddress = arg1
}

function unpause() {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    require uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    require not uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 1
    emit Pause()
}

function setContracts(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    nftContractAddress = arg1
    sub_4138ab4aAddress = arg2
}

function freeze(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    stor4[address(arg1)] = uint8(arg2)
    emit Freeze(arg1, arg2);
    return 1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_51b6ba5b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    name[] = Array(len=arg1.length, data=arg1[all])
}

function transferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'B1 - Burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'B2 - Burn amount exceeds balance'
    if balanceOf[address(msg.sender)] - arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'B2 - Burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply - arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x73ddf252: arg1, msg.sender, 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            revert with 0, 'A1- Reset allowance to 0 first'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferByOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + balanceOf[arg1] < arg2:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x73ddf252: arg2, msg.sender, arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 36, 0x6e444131202d2044656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[164 len 28], mem[220 len 4]
    if allowance[address(msg.sender)][address(arg1)] - arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 36, 0x6e444131202d2044656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[164 len 28], mem[220 len 4]
    if not msg.sender:
        revert with 0, 32, 34, 0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573, mem[294 len 30]
    if not arg1:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_4beab06a(?) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor1.length.field_160)
    if arg1 < validationPrice:
        if msg.value < sub_f8bbf27e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe5631202d20496e73756666696369656e74207061796d656e742070726f76696465,
                        mem[198 len 30]
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + balanceOf[stor19] < arg1:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor19] += arg1
    return 1
}

function sub_6613c59a(?) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor1.length.field_160)
    if arg1 < validationPrice:
        if msg.value < sub_f8bbf27e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe5631202d20496e73756666696369656e74207061796d656e742070726f76696465,
                        mem[198 len 30]
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + balanceOf[stor19] < arg1:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor19] += arg1
    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
    return 1
}

function validateWallet(address arg1, bool arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = uint8(arg2)
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = mem[ceil32(arg3.length) + floor32(arg3.length) + 128] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    emit ValidateWallet(arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function validatePublisher(address arg1, bool arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
    stor5[address(arg1)] = uint8(arg2)
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = mem[ceil32(arg3.length) + floor32(arg3.length) + 128] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    emit ValidatePublisher(arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 35, 0x73424631202d204275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[163 len 29], mem[221 len 3]
    if allowance[address(arg1)][address(msg.sender)] - arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 35, 0x73424631202d204275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[163 len 29], mem[221 len 3]
    if not arg1:
        revert with 0, 32, 34, 0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573, mem[294 len 30]
    if not msg.sender:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'B1 - Burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'B2 - Burn amount exceeds balance'
    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
        revert with 0, 'B2 - Burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply - arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x73ddf252: arg2, arg1, 0
}

function verify(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor10.length:
        mem[ceil32(arg1.length) + 128] = 0
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 9
    _56 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] < stor10.length
    mem[ceil32(arg1.length) + 160] = stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor10[stor[_56]].length + 128 > idx:
        mem[idx + 32] = stor10[stor[_56] + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor10[stor[_56]].length != arg1.length:
        return 0
    idx = 0
    while idx < stor10[stor[_56]].length:
        require idx < arg1.length
        require idx < stor10[stor[_56]].length
        if not Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.length.field_160)
    if stor4[msg.sender]:
        if arg1 != owner:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x735431202d205468652077616c6c6574206f662073656e6465722069732066726f7a65,
                        mem[199 len 29]
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x645432202d205468652077616c6c6574206f6620726563697069656e742069732066726f7a65,
                    mem[202 len 26]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f5431202d205472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if not stor4[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x685433202d205472616e7366657220746f20746865207a65726f20616464726573,
                        mem[197 len 31]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 36, 0x735434202d205472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[164 len 28], mem[220 len 4]
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 36, 0x735434202d205472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[164 len 28], mem[220 len 4]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + balanceOf[arg1] < arg2:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x73ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor1.length.field_160)
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x72544631202d205468652077616c6c6574206f662073656e6465722069732066726f7a65,
                    mem[200 len 28]
    if stor4[address(arg2)]:
        if arg2 != owner:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef544632202d205468652077616c6c6574206f6620726563697069656e742069732066726f7a65,
                        mem[203 len 25]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f5431202d205472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg2:
        if not stor4[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x685433202d205472616e7366657220746f20746865207a65726f20616464726573,
                        mem[197 len 31]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 36, 0x735434202d205472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[164 len 28], mem[220 len 4]
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 36, 0x735434202d205472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[164 len 28], mem[220 len 4]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + balanceOf[arg2] < arg3:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x73ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    39,
                    0x6e544631202d205472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[263 len 25],
                    mem[313 len 7]
    if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    39,
                    0x6e544631202d205472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[263 len 25],
                    mem[313 len 7]
    if not arg1:
        revert with 0, 32, 34, 0x734131202d20417070726f76652066726f6d20746865207a65726f20616464726573, mem[390 len 30]
    if not msg.sender:
        revert with 0, 'A2 - Approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_67bf853d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor10.length:
        mem[ceil32(arg1.length) + 128] = 0
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 9
    _77 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] < stor10.length
    mem[64] = ceil32(arg1.length) + ceil32(stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length) + 160
    mem[ceil32(arg1.length) + 128] = stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length
    mem[ceil32(arg1.length) + 160] = stor10[stor[_77]].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor10[stor[_77]].length + 128 > idx:
        mem[idx + 32] = stor10[stor[_77] + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor10[stor[_77]].length != arg1.length:
        return 0
    idx = 0
    while idx < stor10[stor[_77]].length:
        require idx < arg1.length
        require idx < stor10[stor[_77]].length
        if not Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
            idx = idx + 1
            continue 
        else:
            return 0
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    idx = floor32(arg1.length) + 128
    mem[mem[64] + floor32(arg1.length)] = 256^(-(arg1.length % 32) + 32) - 1 and mem[mem[64] + floor32(arg1.length)] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[mem[64] + arg1.length] = 9
    mem[mem[64]] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0
    return memory
      from mem[64]
       len 32
}

function sub_4039f745(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not uint8(stor1.length.field_160)
    if arg1 < validationPrice:
        if msg.value < sub_f8bbf27e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe5631202d20496e73756666696369656e74207061796d656e742070726f76696465,
                        mem[198 len 30]
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                    mem[197 len 31]
    if arg2.length != 64:
        revert with 0, 'V3 - Invalid hash provided'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor10.length:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 9
        if stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
            revert with 0, 
                        32,
                        39,
                        0x6e5634202d20546869732068617368207761732070726576696f75736c792076616c6964617465,
                        mem[ceil32(arg2.length) + 235 len 25]
    stor10.length++
    stor10[stor10.length][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 9
    stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = stor10.length - 1
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + balanceOf[stor19] < arg1:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor19] += arg1
    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
    return 1
}

function listFiles(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if not stor10.length:
            return 0
        if arg1 > stor10.length - 1:
            revert with 0, 'L1 - Please select a valid start'
        if not arg2:
            idx = arg1
            while idx <= stor10.length - 1:
                require idx < stor10.length
                _116 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _116 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_116 + stor10[idx].length] = 9
                _208 = sha3(mem[mem[64] len _116 + stor10[idx].length + -mem[64] + 32])
                require idx < stor10.length
                _230 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _230 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                emit idx: sha3(mem[mem[64] len _230 + stor10[idx].length - mem[64]]), stor1[_208].field_0
                idx = idx + 1
                continue 
        else:
            if arg2 <= arg1:
                revert with 0, 'L2 - Please select a valid stop'
            if arg2 > stor10.length - 1:
                revert with 0, 'L2 - Please select a valid stop'
            idx = arg1
            while idx <= arg2:
                require idx < stor10.length
                _120 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _120 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_120 + stor10[idx].length] = 9
                _214 = sha3(mem[mem[64] len _120 + stor10[idx].length + -mem[64] + 32])
                require idx < stor10.length
                _232 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _232 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                emit idx: sha3(mem[mem[64] len _232 + stor10[idx].length - mem[64]]), stor1[_214].field_0
                idx = idx + 1
                continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if not stor10.length:
            return 0
        if arg1 > stor10.length - 1:
            revert with 0, 'L1 - Please select a valid start'
        if not arg2:
            idx = arg1
            while idx <= stor10.length - 1:
                require idx < stor10.length
                _124 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _124 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_124 + stor10[idx].length] = 9
                _220 = sha3(mem[mem[64] len _124 + stor10[idx].length + -mem[64] + 32])
                require idx < stor10.length
                _234 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _234 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                emit idx: sha3(mem[mem[64] len _234 + stor10[idx].length - mem[64]]), stor1[_220].field_0
                idx = idx + 1
                continue 
        else:
            if arg2 <= arg1:
                revert with 0, 'L2 - Please select a valid stop'
            if arg2 > stor10.length - 1:
                revert with 0, 'L2 - Please select a valid stop'
            idx = arg1
            while idx <= arg2:
                require idx < stor10.length
                _128 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _128 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_128 + stor10[idx].length] = 9
                _226 = sha3(mem[mem[64] len _128 + stor10[idx].length + -mem[64] + 32])
                require idx < stor10.length
                _236 = mem[64]
                mem[0] = sha3(10) + idx
                mem[mem[64]] = stor10[idx].field_0
                s = mem[64]
                t = sha3(mem[0])
                while _236 + stor10[idx].length > s + 32:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                emit idx: sha3(mem[mem[64] len _236 + stor10[idx].length - mem[64]]), stor1[_226].field_0
                idx = idx + 1
                continue 
    return 1
}

function sub_44a70439(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if msg.sender == owner:
        if arg1.length != arg2.length:
            revert with 0, 
                        32,
                        54,
                        0x65425431202d20416464726573736573206c656e677468206d75737420626520657175616c20746f20616d6f756e7473206c656e6774,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 282 len 10]
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            _105 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = msg.sender
            mem[32] = 2
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = 30
            mem[_111 + 32] = 'SafeMath: subtraction overflow'
            if _105 > balanceOf[msg.sender]:
                _113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _113 + 68] = mem[idx + _111 + 32]
                    idx = idx + 32
                    continue 
                mem[_113 + 68] = mem[_113 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _113 + -mem[64] + 100
            if balanceOf[msg.sender] - _105 > balanceOf[msg.sender]:
                _119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _119 + 68] = mem[idx + _111 + 32]
                    idx = idx + 32
                    continue 
                mem[_119 + 68] = mem[_119 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _119 + -mem[64] + 100
            balanceOf[msg.sender] -= _105
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + (32 * arg1.length) + 160]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            _169 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0x73ddf252: mem[mem[64]], msg.sender, address(_169)
            idx = idx + 1
            continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'eOwnable: caller is not the owne'
        if arg1.length != arg2.length:
            revert with 0, 
                        32,
                        54,
                        0x65425431202d20416464726573736573206c656e677468206d75737420626520657175616c20746f20616d6f756e7473206c656e6774,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 282 len 10]
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            _109 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = msg.sender
            mem[32] = 2
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 30
            mem[_112 + 32] = 'SafeMath: subtraction overflow'
            if _109 > balanceOf[msg.sender]:
                _116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _116 + 68] = mem[idx + _112 + 32]
                    idx = idx + 32
                    continue 
                mem[_116 + 68] = mem[_116 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 100
            if balanceOf[msg.sender] - _109 > balanceOf[msg.sender]:
                _122 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _122 + 68] = mem[idx + _112 + 32]
                    idx = idx + 32
                    continue 
                mem[_122 + 68] = mem[_122 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _122 + -mem[64] + 100
            balanceOf[msg.sender] -= _109
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'SafeMath: addition overflow'
            if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + (32 * arg1.length) + 160]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[96]
            _173 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0x73ddf252: mem[mem[64]], msg.sender, address(_173)
            idx = idx + 1
            continue 
    return 1
}

function verifyFile(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 9
    if not stor10.length:
        _459 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] < stor10.length
        mem[64] = ceil32(arg1.length) + ceil32(stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length) + 160
        mem[ceil32(arg1.length) + 128] = stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length
        mem[0] = sha3(10) + stor[_459]
        mem[ceil32(arg1.length) + 160] = stor10[stor[_459]].field_0
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor10[stor[_459]].length + 128 > idx:
            mem[idx + 32] = stor10[stor[_459] + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor10[stor[_459]].length == arg1.length:
            _1029 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1029] = 0
            _1030 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = arg1.length
            mem[mem[64] + 100 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if arg1.length % 32:
                mem[floor32(arg1.length) + mem[64] + 100] = mem[floor32(arg1.length) + mem[64] + -(arg1.length % 32) + 132 len arg1.length % 32]
                _1492 = mem[64]
                mem[mem[64]] = floor32(arg1.length) + 100
                mem[64] = floor32(arg1.length) + mem[64] + 132
                mem[_1492 + 32 len 4] = unknown_0xb0271023(?????)
                _1495 = mem[_1492]
                mem[floor32(arg1.length) + _1030 + 132 len floor32(mem[_1492])] = mem[_1492 + 32 len floor32(mem[_1492])]
                mem[floor32(arg1.length) + _1030 + floor32(mem[_1492]) + -(mem[_1492] % 32) + 164 len mem[_1492] % 32] = mem[_1492 + -(mem[_1492] % 32) + floor32(mem[_1492]) + 64 len mem[_1492] % 32]
                staticcall stor21.mem[floor32(arg1.length) + _1030 + 132 len 4] with:
                        gas gas_remaining wei
                       args mem[floor32(arg1.length) + _1030 + 136 len _1495 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'V0 - Old contract call failed'
                    mem[floor32(arg1.length) + _1030 + 132] = bool(mem[128])
                    return memory
                      from floor32(arg1.length) + _1030 + 132
                       len 32
                mem[floor32(arg1.length) + _1030 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[floor32(arg1.length) + _1030 + ceil32(return_data.size) + 133] = bool(mem[floor32(arg1.length) + _1030 + 164])
                return memory
                  from floor32(arg1.length) + _1030 + ceil32(return_data.size) + 133
                   len 32
            _1461 = mem[64]
            mem[mem[64]] = arg1.length + 68
            mem[64] = arg1.length + mem[64] + 100
            mem[_1461 + 32 len 4] = unknown_0xb0271023(?????)
            _1464 = mem[_1461]
            mem[mem[64] len floor32(mem[_1461])] = mem[_1461 + 32 len floor32(mem[_1461])]
            mem[mem[64] + floor32(mem[_1461]) + -(mem[_1461] % 32) + 32 len mem[_1461] % 32] = mem[_1461 + floor32(mem[_1461]) + -(mem[_1461] % 32) + 64 len mem[_1461] % 32]
            staticcall stor21 with:
                 funct Mask(32, 224, arg1.length + 68) >> 224
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1464 + arg1.length + _1030 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[128])
            else:
                _1864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1864] = return_data.size
                mem[_1864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[_1864 + 32])
        else:
            _1062 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1062] = 0
            _1063 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = arg1.length
            mem[mem[64] + 100 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                _1466 = mem[64]
                mem[mem[64]] = arg1.length + 68
                mem[64] = arg1.length + mem[64] + 100
                mem[_1466 + 32 len 4] = unknown_0xb0271023(?????)
                _1469 = mem[_1466]
                mem[arg1.length + _1063 + 100 len floor32(mem[_1466])] = mem[_1466 + 32 len floor32(mem[_1466])]
                mem[arg1.length + _1063 + floor32(mem[_1466]) + -(mem[_1466] % 32) + 132 len mem[_1466] % 32] = mem[_1466 + -(mem[_1466] % 32) + floor32(mem[_1466]) + 64 len mem[_1466] % 32]
                staticcall stor21.mem[arg1.length + _1063 + 100 len 4] with:
                        gas gas_remaining wei
                       args mem[arg1.length + _1063 + 104 len _1469 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'V0 - Old contract call failed'
                    mem[arg1.length + _1063 + 100] = bool(mem[128])
                    return memory
                      from arg1.length + _1063 + 100
                       len 32
                mem[arg1.length + _1063 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[arg1.length + _1063 + ceil32(return_data.size) + 101] = bool(mem[arg1.length + _1063 + 132])
                return memory
                  from arg1.length + _1063 + ceil32(return_data.size) + 101
                   len 32
            mem[floor32(arg1.length) + mem[64] + 100] = mem[floor32(arg1.length) + mem[64] + -(arg1.length % 32) + 132 len arg1.length % 32]
            _1496 = mem[64]
            mem[mem[64]] = floor32(arg1.length) + 100
            mem[64] = floor32(arg1.length) + mem[64] + 132
            mem[_1496 + 32 len 4] = unknown_0xb0271023(?????)
            _1499 = mem[_1496]
            mem[mem[64] len floor32(mem[_1496])] = mem[_1496 + 32 len floor32(mem[_1496])]
            mem[mem[64] + floor32(mem[_1496]) + -(mem[_1496] % 32) + 32 len mem[_1496] % 32] = mem[_1496 + floor32(mem[_1496]) + -(mem[_1496] % 32) + 64 len mem[_1496] % 32]
            staticcall stor21 with:
                 funct Mask(32, 224, floor32(arg1.length) + 100) >> 224
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1499 + floor32(arg1.length) + _1063 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[128])
            else:
                _1867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1867] = return_data.size
                mem[_1867 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[_1867 + 32])
    else:
        _454 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        require stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] < stor10.length
        mem[64] = ceil32(arg1.length) + ceil32(stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length) + 160
        mem[ceil32(arg1.length) + 128] = stor10[stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]].length
        mem[0] = sha3(10) + stor[_454]
        mem[ceil32(arg1.length) + 160] = stor10[stor[_454]].field_0
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor10[stor[_454]].length + 128 > idx:
            mem[idx + 32] = stor10[stor[_454] + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor10[stor[_454]].length != arg1.length:
            _1050 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1050] = 0
            _1051 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = arg1.length
            mem[mem[64] + 100 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                _1445 = mem[64]
                mem[mem[64]] = arg1.length + 68
                mem[64] = arg1.length + mem[64] + 100
                mem[_1445 + 32 len 4] = unknown_0xb0271023(?????)
                _1448 = mem[_1445]
                mem[arg1.length + _1051 + 100 len floor32(mem[_1445])] = mem[_1445 + 32 len floor32(mem[_1445])]
                mem[arg1.length + _1051 + floor32(mem[_1445]) + -(mem[_1445] % 32) + 132 len mem[_1445] % 32] = mem[_1445 + -(mem[_1445] % 32) + floor32(mem[_1445]) + 64 len mem[_1445] % 32]
                staticcall stor21.mem[arg1.length + _1051 + 100 len 4] with:
                        gas gas_remaining wei
                       args mem[arg1.length + _1051 + 104 len _1448 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'V0 - Old contract call failed'
                    mem[arg1.length + _1051 + 100] = bool(mem[128])
                    return memory
                      from arg1.length + _1051 + 100
                       len 32
                mem[arg1.length + _1051 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[arg1.length + _1051 + ceil32(return_data.size) + 101] = bool(mem[arg1.length + _1051 + 132])
                return memory
                  from arg1.length + _1051 + ceil32(return_data.size) + 101
                   len 32
            mem[floor32(arg1.length) + mem[64] + 100] = mem[floor32(arg1.length) + mem[64] + -(arg1.length % 32) + 132 len arg1.length % 32]
            _1484 = mem[64]
            mem[mem[64]] = floor32(arg1.length) + 100
            mem[64] = floor32(arg1.length) + mem[64] + 132
            mem[_1484 + 32 len 4] = unknown_0xb0271023(?????)
            _1487 = mem[_1484]
            mem[mem[64] len floor32(mem[_1484])] = mem[_1484 + 32 len floor32(mem[_1484])]
            mem[mem[64] + floor32(mem[_1484]) + -(mem[_1484] % 32) + 32 len mem[_1484] % 32] = mem[_1484 + floor32(mem[_1484]) + -(mem[_1484] % 32) + 64 len mem[_1484] % 32]
            staticcall stor21 with:
                 funct Mask(32, 224, floor32(arg1.length) + 100) >> 224
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1487 + floor32(arg1.length) + _1051 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[128])
            else:
                _1861 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1861] = return_data.size
                mem[_1861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[_1861 + 32])
        else:
            idx = 0
            s = 1
            while idx < stor10[stor[_454]].length:
                require idx < arg1.length
                require idx < stor10[stor[_454]].length
                if not Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0
                continue 
            if s:
                return bool(s)
            _1479 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1479] = 0
            _1480 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = arg1.length
            mem[mem[64] + 100 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                _1855 = mem[64]
                mem[mem[64]] = arg1.length + 68
                mem[64] = arg1.length + mem[64] + 100
                mem[_1855 + 32 len 4] = unknown_0xb0271023(?????)
                _1858 = mem[_1855]
                mem[arg1.length + _1480 + 100 len floor32(mem[_1855])] = mem[_1855 + 32 len floor32(mem[_1855])]
                mem[arg1.length + _1480 + floor32(mem[_1855]) + -(mem[_1855] % 32) + 132 len mem[_1855] % 32] = mem[_1855 + -(mem[_1855] % 32) + floor32(mem[_1855]) + 64 len mem[_1855] % 32]
                staticcall stor21.mem[arg1.length + _1480 + 100 len 4] with:
                        gas gas_remaining wei
                       args mem[arg1.length + _1480 + 104 len _1858 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'V0 - Old contract call failed'
                    mem[arg1.length + _1480 + 100] = bool(mem[128])
                    return memory
                      from arg1.length + _1480 + 100
                       len 32
                mem[arg1.length + _1480 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[arg1.length + _1480 + ceil32(return_data.size) + 101] = bool(mem[arg1.length + _1480 + 132])
                return memory
                  from arg1.length + _1480 + ceil32(return_data.size) + 101
                   len 32
            mem[floor32(arg1.length) + mem[64] + 100] = mem[floor32(arg1.length) + mem[64] + -(arg1.length % 32) + 132 len arg1.length % 32]
            _1868 = mem[64]
            mem[mem[64]] = floor32(arg1.length) + 100
            mem[64] = floor32(arg1.length) + mem[64] + 132
            mem[_1868 + 32 len 4] = unknown_0xb0271023(?????)
            _1871 = mem[_1868]
            mem[mem[64] len floor32(mem[_1868])] = mem[_1868 + 32 len floor32(mem[_1868])]
            mem[mem[64] + floor32(mem[_1868]) + -(mem[_1868] % 32) + 32 len mem[_1868] % 32] = mem[_1868 + floor32(mem[_1868]) + -(mem[_1868] % 32) + 64 len mem[_1868] % 32]
            staticcall stor21 with:
                 funct Mask(32, 224, floor32(arg1.length) + 100) >> 224
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1871 + floor32(arg1.length) + _1480 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[128])
            else:
                _2011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2011] = return_data.size
                mem[_2011 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'V0 - Old contract call failed'
                mem[mem[64]] = bool(mem[_2011 + 32])
    return memory
      from mem[64]
       len 32
}

function sub_464337d4(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not uint8(stor1.length.field_160)
    if arg1 >= validationPrice:
        if stor8:
            if arg2.length != 64:
                revert with 0, 'V3 - Invalid hash provided'
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            mem[ceil32(arg2.length) + 128] = 0
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 160] = 9
            if stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
                revert with 0, 'V5 - NFT exists already'
            mem[ceil32(arg2.length) + 196] = 32
            mem[ceil32(arg2.length) + 228] = arg2.length
            mem[ceil32(arg2.length) + 260 len arg2.length] = arg2[all]
            mem[arg2.length + ceil32(arg2.length) + 260] = 0
            mem[ceil32(arg2.length) + 160] = ceil32(arg2.length) + 68
            mem[ceil32(arg2.length) + 192 len 4] = 3567466677
            mem[(2 * ceil32(arg2.length)) + 260 len floor32(ceil32(arg2.length) + 68)] = 0, 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]
            mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 68) + 68, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
            if not arg3:
                delegate nftContractAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
            else:
                delegate sub_4138ab4aAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
            if not return_data.size:
                if not delegate.return_code:
                    revert with 0, 'V6 - NFT contract call failed'
                idx = 0
                s = 0
                while idx < 32:
                    require idx < arg2.length
                    idx = idx + 1
                    s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                    continue 
                sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
                stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len (4 * ceil32(arg2.length)) + arg2.length + 32])].field_0 % 32 = 0
                Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len (4 * ceil32(arg2.length)) + arg2.length + 32])].field_5) = 0
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 + balanceOf[stor19] < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor19] += arg1
                mem[(2 * ceil32(arg2.length)) + 324] = arg1
                emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324 len arg2.length % 32]), 0
            else:
                mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
                mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code:
                    revert with 0, 'V6 - NFT contract call failed'
                idx = 0
                s = 0
                while idx < 32:
                    require idx < return_data.size
                    idx = idx + 1
                    s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                    continue 
                sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
                stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0 % 32 = 0
                Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_5) = 0
                if arg1 > balanceOf[msg.sender]:
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 30
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                    revert with memory
                      from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                       len ceil32(arg2.length) + 100
                if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 30
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                    revert with memory
                      from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                       len ceil32(arg2.length) + 100
                balanceOf[msg.sender] -= arg1
                if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                       len ceil32(arg2.length) + 100
                if arg1 + balanceOf[stor19] < arg1:
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                       len ceil32(arg2.length) + 100
                balanceOf[stor19] += arg1
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
                emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len ceil32(arg2.length) + arg2.length]), 0
        else:
            if not stor5[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                            mem[197 len 31]
            if arg2.length != 64:
                revert with 0, 'V3 - Invalid hash provided'
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            mem[ceil32(arg2.length) + 128] = 0
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 160] = 9
            if stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
                revert with 0, 'V5 - NFT exists already'
            mem[ceil32(arg2.length) + 196] = 32
            mem[ceil32(arg2.length) + 228] = arg2.length
            mem[ceil32(arg2.length) + 260 len arg2.length] = arg2[all]
            mem[arg2.length + ceil32(arg2.length) + 260] = 0
            mem[ceil32(arg2.length) + 160] = ceil32(arg2.length) + 68
            mem[ceil32(arg2.length) + 192 len 4] = 3567466677
            mem[(2 * ceil32(arg2.length)) + 260 len floor32(ceil32(arg2.length) + 68)] = 0, 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]
            if not arg3:
                mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 68) + 68, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
                delegate nftContractAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < arg2.length
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
                    stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len (4 * ceil32(arg2.length)) + arg2.length + 32])].field_0 % 32 = 0
                    Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len (4 * ceil32(arg2.length)) + arg2.length + 32])].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + balanceOf[stor19] < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + 324] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324 len arg2.length % 32]), 0
                else:
                    mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
                    mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < return_data.size
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0 % 32 = 0
                    Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 30
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                        revert with memory
                          from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                           len ceil32(arg2.length) + 100
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 30
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                        revert with memory
                          from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                           len ceil32(arg2.length) + 100
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                           len ceil32(arg2.length) + 100
                    if arg1 + balanceOf[stor19] < arg1:
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                           len ceil32(arg2.length) + 100
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len ceil32(arg2.length) + arg2.length]), 0
            else:
                mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + 68 % 32, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
                delegate sub_4138ab4aAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg2.length)) + 264 len (6 * ceil32(arg2.length)) + 64]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < arg2.length
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
                    stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_0 % 32 = 0
                    Mask(251, 0, stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 32, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + balanceOf[stor19] < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + 324] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324 len arg2.length % 32]), 0
                else:
                    mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
                    mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < return_data.size
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0 % 32 = 0
                    Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + balanceOf[stor19] < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325 len arg2.length % 32]), 0
    else:
        if msg.value < sub_f8bbf27e:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe5631202d20496e73756666696369656e74207061796d656e742070726f76696465,
                        mem[198 len 30]
        if stor8:
            if arg2.length != 64:
                revert with 0, 'V3 - Invalid hash provided'
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            mem[ceil32(arg2.length) + 128] = 0
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 160] = 9
            if stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
                revert with 0, 'V5 - NFT exists already'
            mem[ceil32(arg2.length) + 196] = 32
            mem[ceil32(arg2.length) + 228] = arg2.length
            mem[ceil32(arg2.length) + 260 len arg2.length] = arg2[all]
            mem[arg2.length + ceil32(arg2.length) + 260] = 0
            mem[ceil32(arg2.length) + 160] = ceil32(arg2.length) + 68
            mem[ceil32(arg2.length) + 196 len 28] = 0
            mem[ceil32(arg2.length) + 192 len 4] = 3567466677
            mem[(2 * ceil32(arg2.length)) + 260 len floor32(ceil32(arg2.length) + 68)] = 3567466677, 0, 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]
            if arg3:
                mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + 68 % 32, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
                delegate sub_4138ab4aAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < arg2.length
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
                    stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_0 % 32 = 0
                    Mask(251, 0, stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + balanceOf[stor19] < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + 324] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324 len arg2.length % 32]), 0
                else:
                    mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
                    mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < return_data.size
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0 % 32 = 0
                    Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_5) = 0
                    if arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg1
                    if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + balanceOf[stor19] < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg1
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
                    emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325 len arg2.length % 32]), 0
                return 1
            mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 68) + 68, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
            delegate nftContractAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                 gas gas_remaining wei
                args Mask(8 * floor32(ceil32(arg2.length) + 68) - 4, -(8 * floor32(ceil32(arg2.length) + 68)) + 256, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << (8 * floor32(ceil32(arg2.length) + 68)) - 256, mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + 260 len (2 * ceil32(arg2.length)) + -floor32(ceil32(arg2.length) + 68) + 68]
            if not return_data.size:
                if not delegate.return_code:
                    mem[(2 * ceil32(arg2.length)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + 264] = 32
                    mem[(2 * ceil32(arg2.length)) + 296] = 29
                    mem[(2 * ceil32(arg2.length)) + 328] = 'V6 - NFT contract call failed'
                    revert with memory
                      from (2 * ceil32(arg2.length)) + 260
                       len ceil32(arg2.length) + 100
                idx = 0
                s = 0
                while idx < 32:
                    require idx < arg2.length
                    idx = idx + 1
                    s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                    continue 
                sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
                mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
                stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len ceil32(arg2.length) + arg2.length + 32])].field_0 % 32 = 0
                Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg2.length)) + 260 len ceil32(arg2.length) + arg2.length + 32])].field_5) = 0
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                    mem[(2 * ceil32(arg2.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + 328] = 32
                    mem[(2 * ceil32(arg2.length)) + 360] = 27
                    mem[(2 * ceil32(arg2.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg2.length)) + 324
                       len ceil32(arg2.length) + 100
                if arg1 + balanceOf[stor19] < arg1:
                    mem[(2 * ceil32(arg2.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg2.length)) + 328] = 32
                    mem[(2 * ceil32(arg2.length)) + 360] = 27
                    mem[(2 * ceil32(arg2.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg2.length)) + 324
                       len ceil32(arg2.length) + 100
                balanceOf[stor19] += arg1
                mem[(2 * ceil32(arg2.length)) + 324] = arg1
                emit 0x73ddf252: mem[(2 * ceil32(arg2.length)) + 324 len ceil32(arg2.length) + 32], msg.sender, validationWalletAddress
                mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
                emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg2.length)) + 324 len ceil32(arg2.length) + arg2.length]), 0
                mem[(2 * ceil32(arg2.length)) + 324] = 1
                return memory
                  from (2 * ceil32(arg2.length)) + 324
                   len ceil32(arg2.length) + 32
            mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
            mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code:
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 265] = 32
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 297] = 29
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 'V6 - NFT contract call failed'
                revert with memory
                  from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261
                   len ceil32(arg2.length) + 100
            idx = 0
            s = 0
            while idx < 32:
                require idx < return_data.size
                idx = idx + 1
                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                continue 
            sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
            stor1[sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len ceil32(arg2.length) + arg2.length + 32])].field_0 % 32 = 0
            Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len ceil32(arg2.length) + arg2.length + 32])].field_5) = 0
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg1
            if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg2.length) + 100
            if arg1 + balanceOf[stor19] < arg1:
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg2.length) + 100
            balanceOf[stor19] += arg1
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
            emit 0x73ddf252: mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len ceil32(arg2.length) + 32], msg.sender, validationWalletAddress
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len ceil32(arg2.length) + arg2.length]), 0
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = 1
            return memory
              from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325
               len ceil32(arg2.length) + 32
        if not stor5[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                        mem[197 len 31]
        if arg2.length != 64:
            revert with 0, 'V3 - Invalid hash provided'
        mem[128 len arg2.length] = arg2[all]
        mem[arg2.length + 128] = 0
        mem[ceil32(arg2.length) + 128] = 0
        mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 160] = 9
        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'V5 - NFT exists already'
        mem[ceil32(arg2.length) + 196] = 32
        mem[ceil32(arg2.length) + 228] = arg2.length
        mem[ceil32(arg2.length) + 260 len arg2.length] = arg2[all]
        mem[arg2.length + ceil32(arg2.length) + 260] = 0
        mem[ceil32(arg2.length) + 160] = ceil32(arg2.length) + 68
        mem[ceil32(arg2.length) + 196 len 28] = 0
        mem[ceil32(arg2.length) + 192 len 4] = 3567466677
        mem[(2 * ceil32(arg2.length)) + 260 len floor32(ceil32(arg2.length) + 68)] = 3567466677, 0, 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]
        mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 292 len ceil32(arg2.length) + 68 % 32] = Mask(8 * ceil32(arg2.length) + 68 % 32, -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 68) + -arg2.length - 36) + 256
        if not arg3:
            delegate nftContractAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
        else:
            delegate sub_4138ab4aAddress.mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 160 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg2.length)) + 264 len ceil32(arg2.length) + 64]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 'V6 - NFT contract call failed'
            idx = 0
            s = 0
            while idx < 32:
                require idx < arg2.length
                idx = idx + 1
                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                continue 
            sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
            mem[(2 * ceil32(arg2.length)) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[(2 * ceil32(arg2.length)) + arg2.length + 260] = 9
            stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_0 % 32 = 0
            Mask(251, 0, stor1[sha3(call.data[arg2 + 36 len floor32(arg2.length)], 256^(-(arg2.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) - (8 * floor32(ceil32(arg2.length) + 68)), 0, mem[ceil32(arg2.length) + 228 len floor32(ceil32(arg2.length) + 68) - 36]) << -(8 * floor32(ceil32(arg2.length) + 68) - floor32(arg2.length)) + (8 * floor32(ceil32(arg2.length) + 68)) or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1), Mask(8 * arg2.length % 32, 0, 9), None)].field_5) = 0
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg1
            if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + balanceOf[stor19] < arg1:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor19] += arg1
            mem[(2 * ceil32(arg2.length)) + 324] = arg1
            emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
            mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] = mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + floor32(arg2.length) + 324 len arg2.length % 32]), 0
        else:
            mem[(2 * ceil32(arg2.length)) + 260] = return_data.size
            mem[(2 * ceil32(arg2.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code:
                revert with 0, 'V6 - NFT contract call failed'
            idx = 0
            s = 0
            while idx < 32:
                require idx < return_data.size
                idx = idx + 1
                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg2.length)) + 292]) >> 8 * idx or s
                continue 
            sub_b7c6fe36[0][] = Array(len=arg2.length, data=arg2[all])
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 261] = 9
            stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0 % 32 = 0
            Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_5) = 0
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[msg.sender] - arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg1
            if arg1 + balanceOf[stor19] < balanceOf[stor19]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + balanceOf[stor19] < arg1:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor19] += arg1
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg1
            emit 0x73ddf252: arg1, msg.sender, validationWalletAddress
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 325 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] = mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            emit 0xafcd25da: 0, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + floor32(arg2.length) + 325 len arg2.length % 32]), 0
    return 1
}

function sub_f1be9dda(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg2 >= validationPrice:
        if not stor5[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                        mem[197 len 31]
        if arg3.length != 64:
            revert with 0, 'V3 - Invalid hash provided'
        mem[128 len arg3.length] = arg3[all]
        mem[arg3.length + 128] = 0
        if stor6[address(arg1)]:
            if not arg4:
                if not arg6:
                    if arg2 <= allowance[address(arg1)][msg.sender]:
                        if arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[address(arg1)][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[arg1] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    if arg5:
                        mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                else:
                    mem[ceil32(arg3.length) + 128] = 0
                    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 160] = 9
                    if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                        revert with 0, 'V5 - NFT exists already'
                    mem[ceil32(arg3.length) + 196] = 32
                    mem[ceil32(arg3.length) + 228] = arg3.length
                    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                    mem[arg3.length + ceil32(arg3.length) + 260] = 0
                    mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                    mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                    mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                    delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < arg3.length
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                        stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                        Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                        if arg2 <= allowance[address(arg1)][msg.sender]:
                            if arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[address(arg1)][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[arg1] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                    else:
                        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < return_data.size
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                        stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                        Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                        if arg2 <= allowance[address(arg1)][msg.sender]:
                            if arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[address(arg1)][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[arg1] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
            else:
                if not stor10.length:
                    stor10.length++
                    stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    _14803 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                    if not arg6:
                        if arg2 <= allowance[address(arg1)][msg.sender]:
                            if arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[address(arg1)][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[arg1] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        if arg5:
                            mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_14803], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                    else:
                        mem[ceil32(arg3.length) + 128] = 0
                        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[ceil32(arg3.length) + arg3.length + 160] = 9
                        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                            revert with 0, 'V5 - NFT exists already'
                        mem[ceil32(arg3.length) + 196] = 32
                        mem[ceil32(arg3.length) + 228] = arg3.length
                        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg3.length) + 260] = 0
                        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 68) + 68, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(arg3.length)) + 264 len ceil32(arg3.length) + 64]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < arg3.length
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                            stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_0 % 32 = 0
                            Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_5) = 0
                            if arg2 <= allowance[address(arg1)][msg.sender]:
                                if arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[address(arg1)][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[arg1] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_14803], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                        else:
                            mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                            mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < return_data.size
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                            stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                            Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                            if arg2 <= allowance[address(arg1)][msg.sender]:
                                if arg2 > allowance[address(arg1)][msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                allowance[address(arg1)][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if arg2 + balanceOf[arg1] < arg2:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_14803], sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + arg3.length]), 0
                else:
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    if stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x6e5634202d20546869732068617368207761732070726576696f75736c792076616c6964617465,
                                    mem[ceil32(arg3.length) + 235 len 25]
                    stor10.length++
                    stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    _19360 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                    if not arg6:
                        if arg2 <= allowance[address(arg1)][msg.sender]:
                            if arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[address(arg1)][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[arg1] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        if arg5:
                            mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_19360], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                    else:
                        mem[ceil32(arg3.length) + 128] = 0
                        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[ceil32(arg3.length) + arg3.length + 160] = 9
                        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                            revert with 0, 'V5 - NFT exists already'
                        mem[ceil32(arg3.length) + 196] = 32
                        mem[ceil32(arg3.length) + 228] = arg3.length
                        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg3.length) + 260] = 0
                        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < arg3.length
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                            stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                            Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                            if arg2 <= allowance[address(arg1)][msg.sender]:
                                if arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[address(arg1)][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[arg1] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_19360], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                        else:
                            mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                            mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < return_data.size
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                            stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                            Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                            if arg2 <= allowance[address(arg1)][msg.sender]:
                                if arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[address(arg1)][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[arg1] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_19360], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
            emit 0x73ddf252: arg2, msg.sender, arg1
        else:
            if not arg4:
                if not arg6:
                    if arg2 <= allowance[stor19][msg.sender]:
                        if arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[stor19][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[stor19] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor19] += arg2
                    if arg5:
                        mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                else:
                    mem[ceil32(arg3.length) + 128] = 0
                    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 160] = 9
                    if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                        revert with 0, 'V5 - NFT exists already'
                    mem[ceil32(arg3.length) + 196] = 32
                    mem[ceil32(arg3.length) + 228] = arg3.length
                    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                    mem[arg3.length + ceil32(arg3.length) + 260] = 0
                    mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                    mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                    mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                    delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < arg3.length
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                        stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                        Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                    else:
                        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < return_data.size
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                        stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                        Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
            else:
                if not stor10.length:
                    stor10.length++
                    stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    _14864 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                    if not arg6:
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_14864], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                    else:
                        mem[ceil32(arg3.length) + 128] = 0
                        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[ceil32(arg3.length) + arg3.length + 160] = 9
                        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                            revert with 0, 'V5 - NFT exists already'
                        mem[ceil32(arg3.length) + 196] = 32
                        mem[ceil32(arg3.length) + 228] = arg3.length
                        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg3.length) + 260] = 0
                        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < arg3.length
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                            stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                            Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                            if arg2 <= allowance[stor19][msg.sender]:
                                if arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[stor19][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[stor19] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor19] += arg2
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_14864], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                        else:
                            mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                            mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < return_data.size
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                            stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                            Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                            if arg2 <= allowance[stor19][msg.sender]:
                                if arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[stor19][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[stor19] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor19] += arg2
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_14864], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
                else:
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    if stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x6e5634202d20546869732068617368207761732070726576696f75736c792076616c6964617465,
                                    mem[ceil32(arg3.length) + 235 len 25]
                    stor10.length++
                    stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 128] = 9
                    _19450 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                    if not arg6:
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_19450], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                    else:
                        mem[ceil32(arg3.length) + 128] = 0
                        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[ceil32(arg3.length) + arg3.length + 160] = 9
                        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                            revert with 0, 'V5 - NFT exists already'
                        mem[ceil32(arg3.length) + 196] = 32
                        mem[ceil32(arg3.length) + 228] = arg3.length
                        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg3.length) + 260] = 0
                        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 68) + 68, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(arg3.length)) + 264 len ceil32(arg3.length) + 64]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < arg3.length
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                            stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_0 % 32 = 0
                            Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_5) = 0
                            if arg2 <= allowance[stor19][msg.sender]:
                                if arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                allowance[stor19][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[stor19] < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor19] += arg2
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_19450], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                        else:
                            mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                            mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code:
                                revert with 0, 'V6 - NFT contract call failed'
                            idx = 0
                            s = 0
                            while idx < 32:
                                require idx < return_data.size
                                idx = idx + 1
                                s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                                continue 
                            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                            stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                            Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                            if arg2 <= allowance[stor19][msg.sender]:
                                if arg2 > allowance[stor19][msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                allowance[stor19][msg.sender] -= arg2
                            else:
                                if arg2 > balanceOf[msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                if arg2 + balanceOf[stor19] < arg2:
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                                       len ceil32(arg3.length) + 100
                                balanceOf[stor19] += arg2
                            if arg5:
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                                emit 0xafcd25da: stor[_19450], sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + arg3.length]), 0
            emit 0x73ddf252: arg2, msg.sender, validationWalletAddress
        return 1
    if msg.value < sub_f8bbf27e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe5631202d20496e73756666696369656e74207061796d656e742070726f76696465,
                    mem[198 len 30]
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e5632202d20556e7665726966696564207075626c697368657220616464726573,
                    mem[197 len 31]
    if arg3.length != 64:
        revert with 0, 'V3 - Invalid hash provided'
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor6[address(arg1)]:
        if not arg4:
            if not arg6:
                if arg2 <= allowance[stor19][msg.sender]:
                    if arg2 > allowance[stor19][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    allowance[stor19][msg.sender] -= arg2
                else:
                    if arg2 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg2
                    if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + balanceOf[stor19] < arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor19] += arg2
                if arg5:
                    mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
            else:
                mem[ceil32(arg3.length) + 128] = 0
                mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 160] = 9
                if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                    revert with 0, 'V5 - NFT exists already'
                mem[ceil32(arg3.length) + 196] = 32
                mem[ceil32(arg3.length) + 228] = arg3.length
                mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                mem[arg3.length + ceil32(arg3.length) + 260] = 0
                mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 68) + 68, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg3.length)) + 264 len ceil32(arg3.length) + 64]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < arg3.length
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                    stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_0 % 32 = 0
                    Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len (4 * ceil32(arg3.length)) + arg3.length + 32])].field_5) = 0
                    if arg2 <= allowance[stor19][msg.sender]:
                        if arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[stor19][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[stor19] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor19] += arg2
                    if arg5:
                        mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                else:
                    mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                    mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < return_data.size
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                    Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                    if arg2 <= allowance[stor19][msg.sender]:
                        if arg2 > allowance[stor19][msg.sender]:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        allowance[stor19][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 30
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = Mask(240, 0, 'SafeMath: subtraction overflow')
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        if arg2 + balanceOf[stor19] < arg2:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                               len ceil32(arg3.length) + 100
                        balanceOf[stor19] += arg2
                    if arg5:
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + arg3.length]), 0
        else:
            if not stor10.length:
                stor10.length++
                stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 128] = 9
                stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 128] = 9
                _14986 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                if not arg6:
                    if arg2 <= allowance[stor19][msg.sender]:
                        if arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[stor19][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[stor19] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor19] += arg2
                    if arg5:
                        mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: stor[_14986], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                else:
                    mem[ceil32(arg3.length) + 128] = 0
                    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 160] = 9
                    if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                        revert with 0, 'V5 - NFT exists already'
                    mem[ceil32(arg3.length) + 196] = 32
                    mem[ceil32(arg3.length) + 228] = arg3.length
                    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                    mem[arg3.length + ceil32(arg3.length) + 260] = 0
                    mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                    mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                    mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                    delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < arg3.length
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                        stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                        Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_14986], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                    else:
                        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < return_data.size
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                        stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                        Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_14986], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
            else:
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 128] = 9
                if stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
                    revert with 0, 
                                32,
                                39,
                                0x6e5634202d20546869732068617368207761732070726576696f75736c792076616c6964617465,
                                mem[ceil32(arg3.length) + 235 len 25]
                stor10.length++
                stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 128] = 9
                stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 128] = 9
                _19630 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
                if not arg6:
                    if arg2 <= allowance[stor19][msg.sender]:
                        if arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[stor19][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[stor19] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor19] += arg2
                    if arg5:
                        mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: stor[_19630], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
                else:
                    mem[ceil32(arg3.length) + 128] = 0
                    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[ceil32(arg3.length) + arg3.length + 160] = 9
                    if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                        revert with 0, 'V5 - NFT exists already'
                    mem[ceil32(arg3.length) + 196] = 32
                    mem[ceil32(arg3.length) + 228] = arg3.length
                    mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                    mem[arg3.length + ceil32(arg3.length) + 260] = 0
                    mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                    mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 0, 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                    mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                    delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(arg3.length)) + 264 len (6 * ceil32(arg3.length)) + 64]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < arg3.length
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                        stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                        Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 32, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_19630], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                    else:
                        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not delegate.return_code:
                            revert with 0, 'V6 - NFT contract call failed'
                        idx = 0
                        s = 0
                        while idx < 32:
                            require idx < return_data.size
                            idx = idx + 1
                            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                            continue 
                        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                        stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                        Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                        if arg2 <= allowance[stor19][msg.sender]:
                            if arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if allowance[stor19][msg.sender] - arg2 > allowance[stor19][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            allowance[stor19][msg.sender] -= arg2
                        else:
                            if arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[stor19] < balanceOf[stor19]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + balanceOf[stor19] < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor19] += arg2
                        if arg5:
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                            emit 0xafcd25da: stor[_19630], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
        emit 0x73ddf252: arg2, msg.sender, validationWalletAddress
        return 1
    if not arg4:
        if not arg6:
            if arg2 <= allowance[address(arg1)][msg.sender]:
                if arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][msg.sender] -= arg2
            else:
                if arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 + balanceOf[arg1] < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if arg5:
                mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                emit 0xafcd25da: 0, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
            emit 0x73ddf252: arg2, msg.sender, arg1
            return 1
        mem[ceil32(arg3.length) + 128] = 0
        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 160] = 9
        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
            revert with 0, 'V5 - NFT exists already'
        mem[ceil32(arg3.length) + 196] = 32
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg3.length) + 260] = 0
        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
        mem[ceil32(arg3.length) + 196 len 28] = 0
        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 3567466677, 0, 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 68) + 68, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32(ceil32(arg3.length) + 68) - 4, -(8 * floor32(ceil32(arg3.length) + 68)) + 256, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << (8 * floor32(ceil32(arg3.length) + 68)) - 256, mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + 260 len (2 * ceil32(arg3.length)) + -floor32(ceil32(arg3.length) + 68) + 68]
        if not return_data.size:
            if not delegate.return_code:
                mem[(2 * ceil32(arg3.length)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + 264] = 32
                mem[(2 * ceil32(arg3.length)) + 296] = 29
                mem[(2 * ceil32(arg3.length)) + 328] = 'V6 - NFT contract call failed'
                revert with memory
                  from (2 * ceil32(arg3.length)) + 260
                   len ceil32(arg3.length) + 100
            idx = 0
            s = 0
            while idx < 32:
                require idx < arg3.length
                idx = idx + 1
                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                continue 
            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
            stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len ceil32(arg3.length) + arg3.length + 32])].field_0 % 32 = 0
            Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len ceil32(arg3.length) + arg3.length + 32])].field_5) = 0
            if arg2 <= allowance[address(arg1)][msg.sender]:
                if arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][msg.sender] -= arg2
            else:
                if arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    mem[(2 * ceil32(arg3.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg3.length)) + 328] = 32
                    mem[(2 * ceil32(arg3.length)) + 360] = 27
                    mem[(2 * ceil32(arg3.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg3.length)) + 324
                       len ceil32(arg3.length) + 100
                if arg2 + balanceOf[arg1] < arg2:
                    mem[(2 * ceil32(arg3.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg3.length)) + 328] = 32
                    mem[(2 * ceil32(arg3.length)) + 360] = 27
                    mem[(2 * ceil32(arg3.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg3.length)) + 324
                       len ceil32(arg3.length) + 100
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if arg5:
                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg3.length)) + 324 len ceil32(arg3.length) + arg3.length]), 0
            mem[(2 * ceil32(arg3.length)) + 324] = arg2
            emit 0x73ddf252: mem[(2 * ceil32(arg3.length)) + 324 len ceil32(arg3.length) + 32], msg.sender, arg1
            mem[(2 * ceil32(arg3.length)) + 324] = 1
            return memory
              from (2 * ceil32(arg3.length)) + 324
               len ceil32(arg3.length) + 32
        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 265] = 32
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 297] = 29
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 'V6 - NFT contract call failed'
            revert with memory
              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261
               len ceil32(arg3.length) + 100
        idx = 0
        s = 0
        while idx < 32:
            require idx < return_data.size
            idx = idx + 1
            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
            continue 
        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
        stor1[sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len ceil32(arg3.length) + arg3.length + 32])].field_0 % 32 = 0
        Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len ceil32(arg3.length) + arg3.length + 32])].field_5) = 0
        if arg2 <= allowance[address(arg1)][msg.sender]:
            if arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            allowance[address(arg1)][msg.sender] -= arg2
        else:
            if arg2 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg3.length) + 100
            if arg2 + balanceOf[arg1] < arg2:
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg3.length) + 100
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if arg5:
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit 0xafcd25da: 0, sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + arg3.length]), 0
    else:
        if not stor10.length:
            stor10.length++
            stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
            mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[ceil32(arg3.length) + arg3.length + 128] = 9
            stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
            mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[ceil32(arg3.length) + arg3.length + 128] = 9
            _14925 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
            if not arg6:
                if arg2 <= allowance[address(arg1)][msg.sender]:
                    if arg2 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    allowance[address(arg1)][msg.sender] -= arg2
                else:
                    if arg2 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + balanceOf[arg1] < arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                if arg5:
                    mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    emit 0xafcd25da: stor[_14925], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
            else:
                mem[ceil32(arg3.length) + 128] = 0
                mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg3.length) + arg3.length + 160] = 9
                if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
                    revert with 0, 'V5 - NFT exists already'
                mem[ceil32(arg3.length) + 196] = 32
                mem[ceil32(arg3.length) + 228] = arg3.length
                mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
                mem[arg3.length + ceil32(arg3.length) + 260] = 0
                mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
                mem[ceil32(arg3.length) + 196 len 28] = 0
                mem[ceil32(arg3.length) + 192 len 4] = 3567466677
                mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 3567466677, 0, 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
                mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + 68 % 32, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
                delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(arg3.length)) + 264 len ceil32(arg3.length) + 64]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < arg3.length
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                    mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
                    stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_0 % 32 = 0
                    Mask(251, 0, stor1[sha3(call.data[arg3 + 36 len floor32(arg3.length)], 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1), Mask(8 * arg3.length % 32, 0, 9), None)].field_5) = 0
                    if arg2 <= allowance[address(arg1)][msg.sender]:
                        if arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[address(arg1)][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[arg1] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    if arg5:
                        mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: stor[_14925], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324 len arg3.length % 32]), 0
                else:
                    mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
                    mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with 0, 'V6 - NFT contract call failed'
                    idx = 0
                    s = 0
                    while idx < 32:
                        require idx < return_data.size
                        idx = idx + 1
                        s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
                        continue 
                    sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
                    stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0 % 32 = 0
                    Mask(251, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 261, ('mask_shl', 250, 5, 1, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 256, 5, 0, ('add', 31, 'returndatasize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_5) = 0
                    if arg2 <= allowance[address(arg1)][msg.sender]:
                        if arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        allowance[address(arg1)][msg.sender] -= arg2
                    else:
                        if arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[arg1] < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    if arg5:
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                        emit 0xafcd25da: stor[_14925], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]), 0
            emit 0x73ddf252: arg2, msg.sender, arg1
            return 1
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = 9
        if stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
            revert with 0, 
                        32,
                        39,
                        0x6e5634202d20546869732068617368207761732070726576696f75736c792076616c6964617465,
                        mem[ceil32(arg3.length) + 235 len 25]
        stor10.length++
        stor10[stor10.length][].field_0 = Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = 9
        stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = stor10.length - 1
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = 9
        _19540 = sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length)])
        if not arg6:
            if arg2 <= allowance[address(arg1)][msg.sender]:
                if arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][msg.sender] -= arg2
            else:
                if arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 + balanceOf[arg1] < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if arg5:
                mem[ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + 192] = mem[ceil32(arg3.length) + floor32(arg3.length) + 192] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                emit 0xafcd25da: stor[_19540], sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 192 len arg3.length % 32]), 0
            emit 0x73ddf252: arg2, msg.sender, arg1
            return 1
        mem[ceil32(arg3.length) + 128] = 0
        mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(8 * arg3.length % 32, 0, 9), mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 32] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 160] = 9
        if stor1[('map', ('call.data', ('add', 36, ('param', 'arg3')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg3'))))))))].field_0:
            revert with 0, 'V5 - NFT exists already'
        mem[ceil32(arg3.length) + 196] = 32
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg3.length) + 260] = 0
        mem[ceil32(arg3.length) + 160] = ceil32(arg3.length) + 68
        mem[ceil32(arg3.length) + 196 len 28] = 0
        mem[ceil32(arg3.length) + 192 len 4] = 3567466677
        mem[(2 * ceil32(arg3.length)) + 260 len floor32(ceil32(arg3.length) + 68)] = 3567466677, 0, 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + -(ceil32(arg3.length) + 68 % 32) + 292 len ceil32(arg3.length) + 68 % 32] = Mask(8 * ceil32(arg3.length) + -floor32(ceil32(arg3.length) + 68) + 68, -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 68) + -arg3.length - 36) + 256
        delegate nftContractAddress.mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 68) + 160 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32(ceil32(arg3.length) + 68) - 4, -(8 * floor32(ceil32(arg3.length) + 68)) + 256, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << (8 * floor32(ceil32(arg3.length) + 68)) - 256, mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 68) + 260 len (2 * ceil32(arg3.length)) + -floor32(ceil32(arg3.length) + 68) + 68]
        if not return_data.size:
            if not delegate.return_code:
                mem[(2 * ceil32(arg3.length)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + 264] = 32
                mem[(2 * ceil32(arg3.length)) + 296] = 29
                mem[(2 * ceil32(arg3.length)) + 328] = 'V6 - NFT contract call failed'
                revert with memory
                  from (2 * ceil32(arg3.length)) + 260
                   len ceil32(arg3.length) + 100
            idx = 0
            s = 0
            while idx < 32:
                require idx < arg3.length
                idx = idx + 1
                s = Mask(-(8 * idx) + 8, 248, mem[idx + 128]) >> 8 * idx or s
                continue 
            sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
            mem[(2 * ceil32(arg3.length)) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 260] = 256^(-(arg3.length % 32) + 32) - 1 and Mask(256, (8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) - (8 * floor32(ceil32(arg3.length) + 68)), 0, mem[ceil32(arg3.length) + 228 len floor32(ceil32(arg3.length) + 68) - 36]) << -(8 * floor32(ceil32(arg3.length) + 68) - floor32(arg3.length)) + (8 * floor32(ceil32(arg3.length) + 68)) or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[(2 * ceil32(arg3.length)) + arg3.length + 260] = 9
            stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len ceil32(arg3.length) + arg3.length + 32])].field_0 % 32 = 0
            Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + 260 len ceil32(arg3.length) + arg3.length + 32])].field_5) = 0
            if arg2 <= allowance[address(arg1)][msg.sender]:
                if arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][msg.sender] -= arg2
            else:
                if arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    mem[(2 * ceil32(arg3.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg3.length)) + 328] = 32
                    mem[(2 * ceil32(arg3.length)) + 360] = 27
                    mem[(2 * ceil32(arg3.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg3.length)) + 324
                       len ceil32(arg3.length) + 100
                if arg2 + balanceOf[arg1] < arg2:
                    mem[(2 * ceil32(arg3.length)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(arg3.length)) + 328] = 32
                    mem[(2 * ceil32(arg3.length)) + 360] = 27
                    mem[(2 * ceil32(arg3.length)) + 392] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(arg3.length)) + 324
                       len ceil32(arg3.length) + 100
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if arg5:
                mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] = mem[(2 * ceil32(arg3.length)) + floor32(arg3.length) + 324] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                emit 0xafcd25da: stor[_19540], sha3(mem[(2 * ceil32(arg3.length)) + 324 len ceil32(arg3.length) + arg3.length]), 0
            mem[(2 * ceil32(arg3.length)) + 324] = arg2
            emit 0x73ddf252: mem[(2 * ceil32(arg3.length)) + 324 len ceil32(arg3.length) + 32], msg.sender, arg1
            mem[(2 * ceil32(arg3.length)) + 324] = 1
            return memory
              from (2 * ceil32(arg3.length)) + 324
               len ceil32(arg3.length) + 32
        mem[(2 * ceil32(arg3.length)) + 260] = return_data.size
        mem[(2 * ceil32(arg3.length)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 265] = 32
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 297] = 29
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 'V6 - NFT contract call failed'
            revert with memory
              from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261
               len ceil32(arg3.length) + 100
        idx = 0
        s = 0
        while idx < 32:
            require idx < return_data.size
            idx = idx + 1
            s = Mask(-(8 * idx) + 8, 248, mem[idx + (2 * ceil32(arg3.length)) + 292]) >> 8 * idx or s
            continue 
        sub_b7c6fe36[0][] = Array(len=arg3.length, data=arg3[all])
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 261] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 261] = 9
        stor1[sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len ceil32(arg3.length) + arg3.length + 32])].field_0 % 32 = 0
        Mask(251, 0, stor1[sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 261 len ceil32(arg3.length) + arg3.length + 32])].field_5) = 0
        if arg2 <= allowance[address(arg1)][msg.sender]:
            if arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            allowance[address(arg1)][msg.sender] -= arg2
        else:
            if arg2 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[msg.sender] - arg2 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg3.length) + 100
            if arg2 + balanceOf[arg1] < arg2:
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 329] = 32
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 361] = 27
                mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 393] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
                   len ceil32(arg3.length) + 100
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if arg5:
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] = mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + floor32(arg3.length) + 325] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit 0xafcd25da: stor[_19540], sha3(mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + arg3.length]), 0
    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = arg2
    emit 0x73ddf252: mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325 len ceil32(arg3.length) + 32], msg.sender, arg1
    mem[(2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325] = 1
    return memory
      from (2 * ceil32(arg3.length)) + ceil32(return_data.size) + 325
       len ceil32(arg3.length) + 32
}



}
