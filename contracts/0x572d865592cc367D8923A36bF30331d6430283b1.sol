contract main {




// =====================  Runtime code  =====================


#
#  - sub_2fc22712(?)
#  - makePayment(uint256 arg1)
#
address owner;
address stor3;
mapping of address stor6;
address oracleAddress;
uint256 jobId;
uint256 fee;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
uint256 sub_6b46d511;
uint256 amountMax;
uint256 sub_cb98d5da;
uint256 sub_109fea86;
array of struct stor23;
array of struct stor24;
array of struct stor25;
array of struct stor26;
mapping of uint256 userTime;
mapping of address requestIdToSender;
mapping of uint256 sub_1f012681;
mapping of uint256 sub_27f2ca04;
mapping of uint256 sub_0c60dd10;

function sub_0c60dd10(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0c60dd10[arg1]
}

function sub_109fea86(?) {
    return sub_109fea86
}

function sub_1f012681(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1f012681[arg1]
}

function requestIdToSender(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return requestIdToSender[arg1]
}

function sub_27f2ca04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27f2ca04[arg1]
}

function sub_6b46d511(?) {
    return sub_6b46d511
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function amountMax() {
    return amountMax
}

function userTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTime[arg1]
}

function jobId() {
    return jobId
}

function sub_cb98d5da(?) {
    return sub_cb98d5da
}

function fee() {
    return fee
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

function sub_ce3f0cb2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp >= userTime[address(arg1)]:
        return 0
    return 1
}

function sub_630ed15f(?) {
    if block.timestamp < userTime[address(msg.sender)]:
        return 1
    sub_27f2ca04[address(msg.sender)] = 0
    sub_0c60dd10[address(msg.sender)] = 0
    return 0
}

function sub_9a15f963(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6b46d511 = arg1
}

function sub_a138e365(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cb98d5da = arg1
}

function setAmountMax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    amountMax = arg1
}

function setFeeBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_109fea86 = arg1
}

function sub_233c917b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = address(arg1)
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function requestClaim(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1f012681[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_1f012681[address(arg1)] += arg2
}

function sub_9f325368(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor6[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor6[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    sub_6b46d511 = arg2
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

function fulfill(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor6[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor6[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    if sub_1f012681[stor28[arg1]] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_1f012681[stor28[arg1]] += arg2
}

function withdrawLink() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function claim() {
    if sub_1f012681[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Play: You dont have anything to claim'
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_1f012681[address(msg.sender)]:
        revert with 0, 'Play: The contract dont have enough money to give'
    sub_1f012681[address(msg.sender)] = 0
    require ext_code.size(stor16)
    call stor16.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_1f012681[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xd4c9d8ec: sub_1f012681[address(msg.sender)], msg.sender
}

function sub_124c7050(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor26.length):
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor26[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor26.length = 0
            idx = 0
            while stor26.length.field_1 + 31 / 32 > idx:
                stor26[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor26[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor26.length = 0
            idx = 0
            while stor26.length.field_1 + 31 / 32 > idx:
                stor26[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_969c0843(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor25.length):
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while stor25.length.field_1 + 31 / 32 > idx:
                stor25[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor25[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor25.length = 0
            idx = 0
            while stor25.length.field_1 + 31 / 32 > idx:
                stor25[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_b1dae391(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor24.length):
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while stor24.length.field_1 + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor24.length = 0
            idx = 0
            while stor24.length.field_1 + 31 / 32 > idx:
                stor24[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_cca82175(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor23.length):
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_b2383043(?) {
    require ext_code.size(stor10)
    staticcall stor10.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor11)
    staticcall stor11.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor12)
    staticcall stor12.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor13)
    staticcall stor13.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor15)
    staticcall stor15.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        if ext_call.return_data[0] <= 0:
            if ext_call.return_data[0] <= 0:
                if ext_call.return_data[0] <= 0:
                    if ext_call.return_data[0] <= 0:
                        if ext_call.return_data[0] <= 0:
                            return 0
                    else:
                else:
            else:
        else:
    else:
    return 1
}

function sub_2ba11b04(?) {
    if bool(stor23.length):
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor23.length):
            if bool(stor23.length) == stor23.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor23.length.field_1:
                if 31 < stor23.length.field_1:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while stor23.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length.field_1), data=mem[128 len ceil32(stor23.length.field_1)])
                mem[128] = 256 * stor23.length.field_8
        else:
            if bool(stor23.length) == stor23.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor23.length.field_1:
                if 31 < stor23.length.field_1:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while stor23.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length.field_1), data=mem[128 len ceil32(stor23.length.field_1)])
                mem[128] = 256 * stor23.length.field_8
        mem[ceil32(stor23.length.field_1) + 192 len ceil32(stor23.length.field_1)] = mem[128 len ceil32(stor23.length.field_1)]
        if ceil32(stor23.length.field_1) > stor23.length.field_1:
            mem[ceil32(stor23.length.field_1) + stor23.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor23.length.field_1), data=mem[128 len ceil32(stor23.length.field_1)], mem[(2 * ceil32(stor23.length.field_1)) + 192 len 2 * ceil32(stor23.length.field_1)]), 
    if bool(stor23.length) == stor23.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor23.length):
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor23.length.field_1:
            if 31 < stor23.length.field_1:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while stor23.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor23.length.field_1:
            if 31 < stor23.length.field_1:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while stor23.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    mem[ceil32(stor23.length.field_1) + 192 len ceil32(stor23.length.field_1)] = mem[128 len ceil32(stor23.length.field_1)]
    if ceil32(stor23.length.field_1) > stor23.length.field_1:
        mem[ceil32(stor23.length.field_1) + stor23.length.field_1 + 192] = 0
    return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)], mem[(2 * ceil32(stor23.length.field_1)) + 192 len 2 * ceil32(stor23.length.field_1)]), 
}

function sub_c3b9fd03(?) {
    if bool(stor24.length):
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor24.length):
            if bool(stor24.length) == stor24.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor24.length.field_1:
                if 31 < stor24.length.field_1:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while stor24.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor24[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length.field_1), data=mem[128 len ceil32(stor24.length.field_1)])
                mem[128] = 256 * stor24.length.field_8
        else:
            if bool(stor24.length) == stor24.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor24.length.field_1:
                if 31 < stor24.length.field_1:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while stor24.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor24[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length.field_1), data=mem[128 len ceil32(stor24.length.field_1)])
                mem[128] = 256 * stor24.length.field_8
        mem[ceil32(stor24.length.field_1) + 192 len ceil32(stor24.length.field_1)] = mem[128 len ceil32(stor24.length.field_1)]
        if ceil32(stor24.length.field_1) > stor24.length.field_1:
            mem[ceil32(stor24.length.field_1) + stor24.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor24.length.field_1), data=mem[128 len ceil32(stor24.length.field_1)], mem[(2 * ceil32(stor24.length.field_1)) + 192 len 2 * ceil32(stor24.length.field_1)]), 
    if bool(stor24.length) == stor24.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor24.length):
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor24.length.field_1:
            if 31 < stor24.length.field_1:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while stor24.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor24[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)])
            mem[128] = 256 * stor24.length.field_8
    else:
        if bool(stor24.length) == stor24.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor24.length.field_1:
            if 31 < stor24.length.field_1:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while stor24.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor24[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)])
            mem[128] = 256 * stor24.length.field_8
    mem[ceil32(stor24.length.field_1) + 192 len ceil32(stor24.length.field_1)] = mem[128 len ceil32(stor24.length.field_1)]
    if ceil32(stor24.length.field_1) > stor24.length.field_1:
        mem[ceil32(stor24.length.field_1) + stor24.length.field_1 + 192] = 0
    return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1)], mem[(2 * ceil32(stor24.length.field_1)) + 192 len 2 * ceil32(stor24.length.field_1)]), 
}

function sub_dc286df2(?) {
    if bool(stor26.length):
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor26.length):
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor26.length.field_1), data=mem[128 len ceil32(stor26.length.field_1)])
                mem[128] = 256 * stor26.length.field_8
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor26.length.field_1), data=mem[128 len ceil32(stor26.length.field_1)])
                mem[128] = 256 * stor26.length.field_8
        mem[ceil32(stor26.length.field_1) + 192 len ceil32(stor26.length.field_1)] = mem[128 len ceil32(stor26.length.field_1)]
        if ceil32(stor26.length.field_1) > stor26.length.field_1:
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor26.length.field_1), data=mem[128 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 192 len 2 * ceil32(stor26.length.field_1)]), 
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor26.length):
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 192 len 2 * ceil32(stor26.length.field_1)]), 
}

function sub_f91ab6f4(?) {
    if bool(stor25.length):
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor25.length):
            if bool(stor25.length) == stor25.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor25.length.field_1), data=mem[128 len ceil32(stor25.length.field_1)])
                mem[128] = 256 * stor25.length.field_8
        else:
            if bool(stor25.length) == stor25.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor25.length.field_1), data=mem[128 len ceil32(stor25.length.field_1)])
                mem[128] = 256 * stor25.length.field_8
        mem[ceil32(stor25.length.field_1) + 192 len ceil32(stor25.length.field_1)] = mem[128 len ceil32(stor25.length.field_1)]
        if ceil32(stor25.length.field_1) > stor25.length.field_1:
            mem[ceil32(stor25.length.field_1) + stor25.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor25.length.field_1), data=mem[128 len ceil32(stor25.length.field_1)], mem[(2 * ceil32(stor25.length.field_1)) + 192 len 2 * ceil32(stor25.length.field_1)]), 
    if bool(stor25.length) == stor25.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor25.length):
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor25.length.field_1) + stor25.length.field_1 + 192] = 0
    return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)], mem[(2 * ceil32(stor25.length.field_1)) + 192 len 2 * ceil32(stor25.length.field_1)]), 
}

function sub_4f608583(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor15)
    staticcall stor15.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stor10)
        staticcall stor10.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 0
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
            else:
                require ext_code.size(stor11)
                staticcall stor11.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 2, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
        else:
            require ext_code.size(stor10)
            staticcall stor10.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 1, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
            else:
                require ext_code.size(stor11)
                staticcall stor11.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 2, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
    else:
        require ext_code.size(stor15)
        staticcall stor15.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor10)
        staticcall stor10.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 0, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
            else:
                require ext_code.size(stor11)
                staticcall stor11.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 2, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
        else:
            require ext_code.size(stor10)
            staticcall stor10.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 1, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
            else:
                require ext_code.size(stor11)
                staticcall stor11.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor12)
                staticcall stor12.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 2, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
                else:
                    require ext_code.size(stor12)
                    staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor13)
                    staticcall stor13.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 3, ext_call.return_data[0]
                    else:
                        require ext_code.size(stor13)
                        staticcall stor13.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            return 4, ext_call.return_data[0]
    ('gt', ('ext_call.return_data', 0, 32), 0)
    require ext_code.size(stor14)
    staticcall stor14.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return 5, ext_call.return_data[0]
}



}
