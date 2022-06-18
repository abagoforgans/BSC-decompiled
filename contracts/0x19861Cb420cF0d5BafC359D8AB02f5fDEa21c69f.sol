contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint8 arg1, address arg2, uint256 arg3)
#  - userInfo(address arg1)
#  - withdrawHalf()
#  - invest(address arg1, uint256 arg2)
#
const devFee = 52

const sub_7a4480c2(?) = 52

const sub_bd77b134(?) = 10


uint256 sub_425ba299;
uint256 sub_72ccb3ba;
uint256 sub_27bdd4cb;
array of uint8 sub_77d42fc9;
address BUSDAddress;
mapping of struct sub_0398e4c7;
mapping of struct investorsMap;
address ceoWalletAddress;
address devWalletAddress;
address promoWalletAddress;

function sub_0398e4c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_0398e4c7[arg1].field_0, sub_0398e4c7[arg1].field_8
}

function sub_27bdd4cb(?) {
    return sub_27bdd4cb
}

function ceoWallet() {
    return ceoWalletAddress
}

function sub_425ba299(?) {
    return sub_425ba299
}

function BUSD() {
    return BUSDAddress
}

function investorsMap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return investorsMap[arg1].field_0, 
           investorsMap[arg1].field_256,
           investorsMap[arg1].field_512,
           investorsMap[arg1].field_768,
           investorsMap[arg1].field_1024,
           investorsMap[arg1].field_1280,
           investorsMap[arg1].field_1536
}

function sub_72ccb3ba(?) {
    return sub_72ccb3ba
}

function sub_77d42fc9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_77d42fc9[uint8(arg1)]
}

function devWallet() {
    return devWalletAddress
}

function promoWallet() {
    return promoWalletAddress
}

function _fallback() payable {
    revert
}

function contractInfo() {
    return sub_425ba299, sub_72ccb3ba, sub_27bdd4cb
}

function getInfo() {
    if investorsMap[address(msg.sender)].field_1792 < 1:
        revert with 'NH{q', 17
    if investorsMap[address(msg.sender)].field_1792 - 1 >= investorsMap[address(msg.sender)].field_1792:
        revert with 'NH{q', 50
    if stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 and 24 * 3600 > -1 / stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0:
        revert with 'NH{q', 17
    if stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 and 10^18 > -1 / stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0:
        revert with 'NH{q', 17
    if 10^18 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 > (-86400 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0) - 1:
        revert with 'NH{q', 17
    return stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0, 
           stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0,
           block.timestamp,
           block.timestamp < (10^18 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0) + (24 * 3600 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0)
}

function withdraw() {
    if investorsMap[address(msg.sender)].field_1792 < 1:
        revert with 'NH{q', 17
    if investorsMap[address(msg.sender)].field_1792 - 1 >= investorsMap[address(msg.sender)].field_1792:
        revert with 'NH{q', 50
    if stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 and 24 * 3600 > -1 / stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0:
        revert with 'NH{q', 17
    if stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 and 10^18 > -1 / stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0:
        revert with 'NH{q', 17
    if 10^18 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0 > (-86400 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0) - 1:
        revert with 'NH{q', 17
    if block.timestamp < (10^18 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0) + (24 * 3600 * stor[(3 * investorsMap[address(msg.sender)].field_1792) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorsMap', 6)))].field_0):
        revert with 0, 'Lockup period has not ended yet.'
    mem[100] = msg.sender
    staticcall this.address.0x5fad303a with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        investorsMap[address(msg.sender)].field_768 = block.timestamp % 1099511627776
        if investorsMap[address(msg.sender)].field_256 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        investorsMap[address(msg.sender)].field_256 += ext_call.return_data[0]
    if investorsMap[address(msg.sender)].field_256 <= 0:
        require investorsMap[address(msg.sender)].field_512 > 0
    if investorsMap[address(msg.sender)].field_256 > -investorsMap[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    investorsMap[address(msg.sender)].field_256 = 0
    investorsMap[address(msg.sender)].field_512 = 0
    if investorsMap[address(msg.sender)].field_1280 > -investorsMap[address(msg.sender)].field_256 + -investorsMap[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    investorsMap[address(msg.sender)].field_1280 = investorsMap[address(msg.sender)].field_1280 + investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512
    if sub_72ccb3ba > -investorsMap[address(msg.sender)].field_256 + -investorsMap[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    sub_72ccb3ba = sub_72ccb3ba + investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(BUSDAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512, 0
    mem[ceil32(return_data.size) + 328] = 0
    call BUSDAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, investorsMap[address(msg.sender)].field_256 + investorsMap[address(msg.sender)].field_512, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5fad303a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < investorsMap[address(arg1)].field_1792:
        mem[0] = stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_0
        mem[32] = 5
        if sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 and 24 * 3600 > 16777215 / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 > -(24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) + test266151307():
            revert with 'NH{q', 17
        if investorsMap[address(arg1)].field_768 > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512:
            if block.timestamp > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                if investorsMap[address(arg1)].field_768 >= stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if investorsMap[address(arg1)].field_768 > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 < investorsMap[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 and (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - investorsMap[address(arg1)].field_768 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256:
                    revert with 'NH{q', 17
                if (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) and sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256):
                    revert with 'NH{q', 17
                if not sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                    revert with 'NH{q', 18
                if s > -((stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
                continue 
            if investorsMap[address(arg1)].field_768 >= block.timestamp % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if investorsMap[address(arg1)].field_768 > block.timestamp % 1099511627776:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp % 1099511627776 < investorsMap[address(arg1)].field_768:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 and (block.timestamp % 1099511627776) - investorsMap[address(arg1)].field_768 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256:
                revert with 'NH{q', 17
            if (block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) and sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / (block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256):
                revert with 'NH{q', 17
            if not sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -((block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (investorsMap[address(arg1)].field_768 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if block.timestamp > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 >= stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 < stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 and (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256:
                revert with 'NH{q', 17
            if (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) and sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256):
                revert with 'NH{q', 17
            if not sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -((stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 + (24 * 3600 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 >= block.timestamp % 1099511627776:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 > block.timestamp % 1099511627776:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp % 1099511627776 < stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 and (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256:
            revert with 'NH{q', 17
        if (block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) and sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / (block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256):
            revert with 'NH{q', 17
        if not sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
            revert with 'NH{q', 18
        if s > -((block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((block.timestamp % 1099511627776 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) - (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_512 * stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorsMap', 6)))].field_256 * sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8) / sub_0398e4c7[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
        continue 
    return s
}



}
