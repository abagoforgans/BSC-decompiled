contract main {




// =====================  Runtime code  =====================


#
#  - sub_8ed5f297(?)
#
const version = 'iTNM: StakingAnytimeForPeriod v6'


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 176
uint16 stor0;
address sub_a4baf750Address; offset 16
address token_Address;
uint256 sub_430d377f;
uint256 sub_6702a595;
uint256 sub_974050fc;
uint256 sub_4897ecd1;
uint256 sub_1a7bc49c;
array of struct sub_fe286862;

function sub_1a7bc49c(?) payable {
    return sub_1a7bc49c
}

function sub_430d377f(?) payable {
    return sub_430d377f
}

function sub_4897ecd1(?) payable {
    return sub_4897ecd1
}

function sub_4ba87651(?) payable {
    return bool(uint8(stor0.field_176))
}

function sub_6702a595(?) payable {
    return sub_6702a595
}

function sub_974050fc(?) payable {
    return sub_974050fc
}

function sub_a4baf750(?) payable {
    return sub_a4baf750Address
}

function token_() payable {
    return token_Address
}

function sub_fe286862(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fe286862[arg1].field_256
}

function _fallback() payable {
    revert
}

function canDeposit() payable {
    if uint8(stor0.field_176):
        return not bool(uint8(stor0.field_176))
    return (sub_1a7bc49c < sub_430d377f)
}

function sub_2bc89fdd(?) payable {
    if uint8(stor0.field_176):
        return 0
    if sub_1a7bc49c >= sub_430d377f:
        return 0
    if sub_430d377f < sub_1a7bc49c:
        revert with 0, 17
    return (sub_430d377f - sub_1a7bc49c)
}

function pause() payable {
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    if uint8(stor0.field_176):
        revert with 0, '', 0
    uint8(stor0.field_176) = 1
    emit Pause()
}

function resume() payable {
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    if not uint8(stor0.field_176):
        revert with 0, '', 0
    uint8(stor0.field_176) = 0
    emit Resume()
}

function earnedAmount(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 * arg2 and arg3 > -1 / arg1 * arg2:
        revert with 0, 17
    return (arg1 * arg2 * arg3 / 87600000 * 24 * 3600)
}

function sub_905d5411(?) payable {
    require calldata.size - 4 >= 32
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    if sub_6702a595 == arg1:
        revert with 0, 'Already done', 0
    if not arg1:
        revert with 0, '', 0
    emit 0xe581cf47: sub_6702a595, arg1
    sub_6702a595 = arg1
}

function canDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 0
    if uint8(stor0.field_176):
        return 0
    if sub_1a7bc49c >= sub_430d377f:
        return 0
    if sub_fe286862[address(arg1)].field_0 < sub_fe286862[address(arg1)].field_256:
        revert with 0, 17
    return (sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256 < sub_6702a595)
}

function depositToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(stor0.field_176):
        revert with 0, '', 0
    if sub_1a7bc49c > !arg1:
        revert with 0, 17
    if sub_1a7bc49c + arg1 > sub_430d377f:
        revert with 0, 'Collateral limit reached', 0
    if not arg1:
        revert with 0, 'Zero d', 0
    if not arg2:
        revert with 0, 'Zero addre', 0
    if sub_fe286862[address(arg2)].field_0 < sub_fe286862[address(arg2)].field_256:
        revert with 0, 17
    if sub_fe286862[address(arg2)].field_0 - sub_fe286862[address(arg2)].field_256 >= sub_6702a595:
        revert with 0, 'User stakes limit reached', 0
    require ext_code.size(token_Address)
    call token_Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token ', 0
    if sub_1a7bc49c > !arg1:
        revert with 0, 17
    sub_1a7bc49c += arg1
    sub_fe286862[address(arg2)].field_0++
    sub_fe286862[address(arg2)][sub_fe286862[address(arg2)].field_0].field_0 = block.timestamp
    sub_fe286862[address(arg2)][sub_fe286862[address(arg2)].field_0].field_256 = arg1
    emit Deposit(arg1, msg.sender, arg2);
}

function depositToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_176):
        revert with 0, '', 0
    if sub_1a7bc49c > !arg1:
        revert with 0, 17
    if sub_1a7bc49c + arg1 > sub_430d377f:
        revert with 0, 'Collateral limit reached', 0
    if not arg1:
        revert with 0, 'Zero d', 0
    if not msg.sender:
        revert with 0, 'Zero addre', 0
    if sub_fe286862[address(msg.sender)].field_0 < sub_fe286862[address(msg.sender)].field_256:
        revert with 0, 17
    if sub_fe286862[address(msg.sender)].field_0 - sub_fe286862[address(msg.sender)].field_256 >= sub_6702a595:
        revert with 0, 'User stakes limit reached', 0
    require ext_code.size(token_Address)
    call token_Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token ', 0
    if sub_1a7bc49c > !arg1:
        revert with 0, 17
    sub_1a7bc49c += arg1
    sub_fe286862[address(msg.sender)].field_0++
    sub_fe286862[address(msg.sender)][sub_fe286862[address(msg.sender)].field_0].field_0 = block.timestamp
    sub_fe286862[address(msg.sender)][sub_fe286862[address(msg.sender)].field_0].field_256 = arg1
    emit Deposit(arg1, msg.sender, msg.sender);
}

function sub_fe9d4f2f(?) payable {
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    require ext_code.size(token_Address)
    staticcall token_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_430d377f and sub_974050fc > -1 / sub_430d377f:
        revert with 0, 17
    if sub_430d377f * sub_974050fc and sub_4897ecd1 > -1 / sub_430d377f * sub_974050fc:
        revert with 0, 17
    if sub_430d377f * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600 > !sub_1a7bc49c:
        revert with 0, 17
    if ext_call.return_data[0] <= (sub_430d377f * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
        revert with 0, 'Zero wit', 0
    if ext_call.return_data[0] < (sub_430d377f * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
        revert with 0, 17
    require ext_code.size(token_Address)
    call token_Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - (sub_430d377f * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) - sub_1a7bc49c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token ', 0
}

function setMaxStakeLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    if sub_430d377f == arg1:
        revert with 0, 'Already done', 0
    if arg1 < sub_1a7bc49c:
        revert with 0, 'Stake limi', 0
    emit SetMaxStakeLimit(sub_430d377f, arg1);
    sub_430d377f = arg1
    require ext_code.size(token_Address)
    staticcall token_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and sub_974050fc > -1 / arg1:
        revert with 0, 17
    if arg1 * sub_974050fc and sub_4897ecd1 > -1 / arg1 * sub_974050fc:
        revert with 0, 17
    if arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600 > !sub_1a7bc49c:
        revert with 0, 17
    if ext_call.return_data[0] > (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
        if ext_call.return_data[0] < (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
            revert with 0, 17
        require ext_code.size(token_Address)
        call token_Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) - sub_1a7bc49c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Token ', 0
    else:
        if ext_call.return_data[0] < (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
            if (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(token_Address)
            call token_Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (arg1 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Token ', 0
}

function sub_531b68a1(?) payable {
    require calldata.size - 4 >= 32
    if sub_a4baf750Address != msg.sender:
        revert with 0, 32, 24, 0xfe417661696c61626c6520666f722061, 0
    if sub_430d377f > !arg1:
        revert with 0, 17
    if sub_430d377f == sub_430d377f + arg1:
        revert with 0, 'Already done', 0
    if sub_430d377f + arg1 < sub_1a7bc49c:
        revert with 0, 'Stake limi', 0
    emit SetMaxStakeLimit(sub_430d377f, sub_430d377f + arg1);
    sub_430d377f += arg1
    require ext_code.size(token_Address)
    staticcall token_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_430d377f + arg1 and sub_974050fc > -1 / sub_430d377f + arg1:
        revert with 0, 17
    if (sub_430d377f * sub_974050fc) + (arg1 * sub_974050fc) and sub_4897ecd1 > -1 / (sub_430d377f * sub_974050fc) + (arg1 * sub_974050fc):
        revert with 0, 17
    if (sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600 > !sub_1a7bc49c:
        revert with 0, 17
    if ext_call.return_data[0] > ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) + sub_1a7bc49c:
        if ext_call.return_data[0] < ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) + sub_1a7bc49c:
            revert with 0, 17
        require ext_code.size(token_Address)
        call token_Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) - sub_1a7bc49c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Token ', 0
    else:
        if ext_call.return_data[0] < ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) + sub_1a7bc49c:
            if ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) + sub_1a7bc49c < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(token_Address)
            call token_Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ((sub_430d377f * sub_974050fc * sub_4897ecd1) + (arg1 * sub_974050fc * sub_4897ecd1) / 87600000 * 24 * 3600) + sub_1a7bc49c - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Token ', 0
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'Zero addre', 0
    if not arg2:
        revert with 0, 'Zero addre', 0
    if arg6 < 60:
        revert with 0, '', 0
    sub_a4baf750Address = arg1
    token_Address = arg2
    sub_4897ecd1 = arg6
    sub_974050fc = arg5
    if sub_6702a595 == arg4:
        revert with 0, 'Already done', 0
    if not arg4:
        revert with 0, '', 0
    emit 0xe581cf47: sub_6702a595, arg4
    sub_6702a595 = arg4
    if arg3:
        if sub_430d377f == arg3:
            revert with 0, 'Already done', 0
        if arg3 < sub_1a7bc49c:
            revert with 0, 'Stake limi', 0
        emit SetMaxStakeLimit(sub_430d377f, arg3);
        sub_430d377f = arg3
        require ext_code.size(token_Address)
        staticcall token_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 and sub_974050fc > -1 / arg3:
            revert with 0, 17
        if arg3 * sub_974050fc and sub_4897ecd1 > -1 / arg3 * sub_974050fc:
            revert with 0, 17
        if arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600 > !sub_1a7bc49c:
            revert with 0, 17
        if ext_call.return_data[0] > (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
            if ext_call.return_data[0] < (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
                revert with 0, 17
            require ext_code.size(token_Address)
            call token_Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) - sub_1a7bc49c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Token ', 0
        else:
            if ext_call.return_data[0] < (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c:
                if (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(token_Address)
                call token_Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg3 * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600) + sub_1a7bc49c - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Token ', 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function withdrawToken() payable {
    mem[96] = 6
    mem[128] = 0x5061757365640000000000000000000000000000000000000000000000000000
    if uint8(stor0.field_176):
        revert with 0, '', 0
    mem[160] = 21
    mem[192] = 0x5a65726f20616464726573732070726f76696465640000000000000000000000
    if not msg.sender:
        revert with 0, 'Zero addre', 0
    mem[0] = msg.sender
    mem[32] = 7
    mem[64] = 288
    mem[224] = 19
    mem[256] = 'Nothing to withdraw' << 104
    if not sub_fe286862[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw', 0
    if sub_fe286862[msg.sender].field_256 > !sub_6702a595:
        revert with 0, 17
    if sub_fe286862[msg.sender].field_0 <= sub_fe286862[msg.sender].field_256 + sub_6702a595:
        idx = sub_fe286862[msg.sender].field_256
        s = 0
        t = 0
        while idx < sub_fe286862[msg.sender].field_0:
            if sub_fe286862[msg.sender][idx].field_0 > !sub_4897ecd1:
                revert with 0, 17
            if block.timestamp >= sub_fe286862[msg.sender][idx].field_0 + sub_4897ecd1:
                if idx >= sub_fe286862[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 7)
                sub_fe286862[msg.sender][idx].field_256 = 0
                if sub_fe286862[msg.sender].field_256 == -1:
                    revert with 0, 17
                sub_fe286862[msg.sender].field_256++
                if s > !sub_fe286862[msg.sender][idx].field_256:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_fe286862[msg.sender][idx].field_256
                t = sub_fe286862[msg.sender][idx].field_256
                continue 
            mem[320] = 0x5a65726f20776974686472617720616d6f756e74000000000000000000000000
            if not s:
                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[356] = 32
                idx = 0
                while idx < 20:
                    mem[idx + 420] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 20, mem[420 len 20], 0
            if sub_1a7bc49c < s:
                revert with 0, 17
            sub_1a7bc49c -= s
            if sub_430d377f < s:
                revert with 0, 17
            sub_430d377f -= s
            if s and sub_974050fc > -1 / s:
                revert with 0, 17
            if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
                revert with 0, 17
            if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
                revert with 0, 17
            mem[388] = s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            require ext_code.size(token_Address)
            call token_Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 384] = 0x546f6b656e207472616e73666572206661696c00000000000000000000000000
            if ext_call.return_data[0]:
                emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, msg.sender
            mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 420] = 32
            idx = 0
            while idx < 19:
                mem[idx + ceil32(return_data.size) + 484] = mem[idx + ceil32(return_data.size) + 384]
                idx = idx + 32
                continue 
            revert with 0, 32, 19, mem[ceil32(return_data.size) + 484 len 19], 0
    else:
        idx = sub_fe286862[msg.sender].field_256
        s = 0
        t = 0
        while idx < sub_fe286862[msg.sender].field_256 + sub_6702a595:
            if idx >= sub_fe286862[msg.sender].field_0:
                revert with 0, 50
            if sub_fe286862[msg.sender][idx].field_0 > !sub_4897ecd1:
                revert with 0, 17
            if block.timestamp >= sub_fe286862[msg.sender][idx].field_0 + sub_4897ecd1:
                if idx >= sub_fe286862[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 7)
                sub_fe286862[msg.sender][idx].field_256 = 0
                if sub_fe286862[msg.sender].field_256 == -1:
                    revert with 0, 17
                sub_fe286862[msg.sender].field_256++
                if s > !sub_fe286862[msg.sender][idx].field_256:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_fe286862[msg.sender][idx].field_256
                t = sub_fe286862[msg.sender][idx].field_256
                continue 
            mem[320] = 0x5a65726f20776974686472617720616d6f756e74000000000000000000000000
            if not s:
                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[356] = 32
                idx = 0
                while idx < 20:
                    mem[idx + 420] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 20, mem[420 len 20], 0
            if sub_1a7bc49c < s:
                revert with 0, 17
            sub_1a7bc49c -= s
            if sub_430d377f < s:
                revert with 0, 17
            sub_430d377f -= s
            if s and sub_974050fc > -1 / s:
                revert with 0, 17
            if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
                revert with 0, 17
            if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
                revert with 0, 17
            mem[388] = s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            require ext_code.size(token_Address)
            call token_Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 384] = 0x546f6b656e207472616e73666572206661696c00000000000000000000000000
            if ext_call.return_data[0]:
                emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, msg.sender
            mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 420] = 32
            idx = 0
            while idx < 19:
                mem[idx + ceil32(return_data.size) + 484] = mem[idx + ceil32(return_data.size) + 384]
                idx = idx + 32
                continue 
            revert with 0, 32, 19, mem[ceil32(return_data.size) + 484 len 19], 0
    if not s:
        revert with 0, 'Zero wit', 0
    if sub_1a7bc49c < s:
        revert with 0, 17
    sub_1a7bc49c -= s
    if sub_430d377f < s:
        revert with 0, 17
    sub_430d377f -= s
    if s and sub_974050fc > -1 / s:
        revert with 0, 17
    if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
        revert with 0, 17
    if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
        revert with 0, 17
    require ext_code.size(token_Address)
    call token_Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token ', 0
    emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, msg.sender
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 6
    mem[128] = 0x5061757365640000000000000000000000000000000000000000000000000000
    if uint8(stor0.field_176):
        revert with 0, '', 0
    mem[160] = 21
    mem[192] = 0x5a65726f20616464726573732070726f76696465640000000000000000000000
    if not arg1:
        revert with 0, 'Zero addre', 0
    mem[0] = msg.sender
    mem[32] = 7
    mem[64] = 288
    mem[224] = 19
    mem[256] = 'Nothing to withdraw' << 104
    if not sub_fe286862[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw', 0
    if sub_fe286862[msg.sender].field_256 > !sub_6702a595:
        revert with 0, 17
    if sub_fe286862[msg.sender].field_0 <= sub_fe286862[msg.sender].field_256 + sub_6702a595:
        idx = sub_fe286862[msg.sender].field_256
        s = 0
        t = 0
        while idx < sub_fe286862[msg.sender].field_0:
            if sub_fe286862[msg.sender][idx].field_0 > !sub_4897ecd1:
                revert with 0, 17
            if block.timestamp >= sub_fe286862[msg.sender][idx].field_0 + sub_4897ecd1:
                if idx >= sub_fe286862[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 7)
                sub_fe286862[msg.sender][idx].field_256 = 0
                if sub_fe286862[msg.sender].field_256 == -1:
                    revert with 0, 17
                sub_fe286862[msg.sender].field_256++
                if s > !sub_fe286862[msg.sender][idx].field_256:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_fe286862[msg.sender][idx].field_256
                t = sub_fe286862[msg.sender][idx].field_256
                continue 
            mem[320] = 0x5a65726f20776974686472617720616d6f756e74000000000000000000000000
            if not s:
                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[356] = 32
                idx = 0
                while idx < 20:
                    mem[idx + 420] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 20, mem[420 len 20], 0
            if sub_1a7bc49c < s:
                revert with 0, 17
            sub_1a7bc49c -= s
            if sub_430d377f < s:
                revert with 0, 17
            sub_430d377f -= s
            if s and sub_974050fc > -1 / s:
                revert with 0, 17
            if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
                revert with 0, 17
            if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
                revert with 0, 17
            mem[388] = s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            require ext_code.size(token_Address)
            call token_Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 384] = 0x546f6b656e207472616e73666572206661696c00000000000000000000000000
            if ext_call.return_data[0]:
                emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, arg1
            mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 420] = 32
            idx = 0
            while idx < 19:
                mem[idx + ceil32(return_data.size) + 484] = mem[idx + ceil32(return_data.size) + 384]
                idx = idx + 32
                continue 
            revert with 0, 32, 19, mem[ceil32(return_data.size) + 484 len 19], 0
    else:
        idx = sub_fe286862[msg.sender].field_256
        s = 0
        t = 0
        while idx < sub_fe286862[msg.sender].field_256 + sub_6702a595:
            if idx >= sub_fe286862[msg.sender].field_0:
                revert with 0, 50
            if sub_fe286862[msg.sender][idx].field_0 > !sub_4897ecd1:
                revert with 0, 17
            if block.timestamp >= sub_fe286862[msg.sender][idx].field_0 + sub_4897ecd1:
                if idx >= sub_fe286862[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 7)
                sub_fe286862[msg.sender][idx].field_256 = 0
                if sub_fe286862[msg.sender].field_256 == -1:
                    revert with 0, 17
                sub_fe286862[msg.sender].field_256++
                if s > !sub_fe286862[msg.sender][idx].field_256:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_fe286862[msg.sender][idx].field_256
                t = sub_fe286862[msg.sender][idx].field_256
                continue 
            mem[320] = 0x5a65726f20776974686472617720616d6f756e74000000000000000000000000
            if not s:
                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[356] = 32
                idx = 0
                while idx < 20:
                    mem[idx + 420] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 20, mem[420 len 20], 0
            if sub_1a7bc49c < s:
                revert with 0, 17
            sub_1a7bc49c -= s
            if sub_430d377f < s:
                revert with 0, 17
            sub_430d377f -= s
            if s and sub_974050fc > -1 / s:
                revert with 0, 17
            if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
                revert with 0, 17
            if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
                revert with 0, 17
            mem[388] = s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            require ext_code.size(token_Address)
            call token_Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 384] = 0x546f6b656e207472616e73666572206661696c00000000000000000000000000
            if ext_call.return_data[0]:
                emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, arg1
            mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 420] = 32
            idx = 0
            while idx < 19:
                mem[idx + ceil32(return_data.size) + 484] = mem[idx + ceil32(return_data.size) + 384]
                idx = idx + 32
                continue 
            revert with 0, 32, 19, mem[ceil32(return_data.size) + 484 len 19], 0
    if not s:
        revert with 0, 'Zero wit', 0
    if sub_1a7bc49c < s:
        revert with 0, 17
    sub_1a7bc49c -= s
    if sub_430d377f < s:
        revert with 0, 17
    sub_430d377f -= s
    if s and sub_974050fc > -1 / s:
        revert with 0, 17
    if s * sub_974050fc and sub_4897ecd1 > -1 / s * sub_974050fc:
        revert with 0, 17
    if s > !(s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600):
        revert with 0, 17
    require ext_code.size(token_Address)
    call token_Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token ', 0
    emit 0xa708f643: s + (s * sub_974050fc * sub_4897ecd1 / 87600000 * 24 * 3600), sub_430d377f, msg.sender, arg1
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _65 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_65 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not sub_6702a595:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _68 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_68 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    mem[0] = arg1
    mem[32] = 7
    if 0 > !sub_fe286862[address(arg1)].field_256:
        revert with 0, 17
    if sub_fe286862[address(arg1)].field_256 >= sub_fe286862[address(arg1)].field_0:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _71 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_71 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if sub_fe286862[address(arg1)].field_256 > !sub_6702a595:
        revert with 0, 17
    if sub_fe286862[address(arg1)].field_0 <= sub_fe286862[address(arg1)].field_256 + sub_6702a595:
        if sub_fe286862[address(arg1)].field_0 < sub_fe286862[address(arg1)].field_256:
            revert with 0, 17
        if sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256 > test266151307():
            revert with 0, 65
        mem[96] = sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256
        mem[64] = (32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 128
        if not sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256:
            idx = sub_fe286862[address(arg1)].field_256
            while idx < sub_fe286862[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 7)
                _78 = mem[64]
                mem[64] = mem[64] + 64
                mem[_78] = sub_fe286862[address(arg1)][idx].field_0
                mem[_78 + 32] = sub_fe286862[address(arg1)][idx].field_256
                if idx < sub_fe286862[address(arg1)].field_256:
                    revert with 0, 17
                if idx - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx - sub_fe286862[address(arg1)].field_256) + 128] = _78
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _81 = mem[64]
            mem[mem[64]] = 32
            _83 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _83:
                _113 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_113 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _81 + (64 * _83) + -mem[64] + 64
        mem[64] = (32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 192
        mem[(32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 128] = 0
        mem[(32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 160] = 0
        mem[128] = (32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 128
        s = 128
        idx = sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 128] = 0
            mem[(32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 160] = 0
            mem[s + 32] = (32 * sub_fe286862[address(arg1)].field_0 - sub_fe286862[address(arg1)].field_256) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = sub_fe286862[address(arg1)].field_256
        while idx < sub_fe286862[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 7)
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = sub_fe286862[address(arg1)][idx].field_0
            mem[_121 + 32] = sub_fe286862[address(arg1)][idx].field_256
            if idx < sub_fe286862[address(arg1)].field_256:
                revert with 0, 17
            if idx - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - sub_fe286862[address(arg1)].field_256) + 128] = _121
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _125 = mem[64]
        mem[mem[64]] = 32
        _127 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _127:
            _139 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_139 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _125 + (64 * _127) + -mem[64] + 64
    if sub_fe286862[address(arg1)].field_256 + sub_6702a595 < sub_fe286862[address(arg1)].field_256:
        revert with 0, 17
    if sub_6702a595 > test266151307():
        revert with 0, 65
    mem[96] = sub_6702a595
    mem[64] = (32 * sub_6702a595) + 128
    if not sub_6702a595:
        idx = sub_fe286862[address(arg1)].field_256
        while idx < sub_fe286862[address(arg1)].field_256 + sub_6702a595:
            if idx >= sub_fe286862[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 7)
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = sub_fe286862[address(arg1)][idx].field_0
            mem[_80 + 32] = sub_fe286862[address(arg1)][idx].field_256
            if idx < sub_fe286862[address(arg1)].field_256:
                revert with 0, 17
            if idx - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - sub_fe286862[address(arg1)].field_256) + 128] = _80
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _87:
            _116 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_116 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _82 + (64 * _87) + -mem[64] + 64
    mem[64] = (32 * sub_6702a595) + 192
    mem[(32 * sub_6702a595) + 128] = 0
    mem[(32 * sub_6702a595) + 160] = 0
    mem[128] = (32 * sub_6702a595) + 128
    s = 128
    idx = sub_6702a595
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_6702a595) + 128] = 0
        mem[(32 * sub_6702a595) + 160] = 0
        mem[s + 32] = (32 * sub_6702a595) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = sub_fe286862[address(arg1)].field_256
    while idx < sub_fe286862[address(arg1)].field_256 + sub_6702a595:
        if idx >= sub_fe286862[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        _124 = mem[64]
        mem[64] = mem[64] + 64
        mem[_124] = sub_fe286862[address(arg1)][idx].field_0
        mem[_124 + 32] = sub_fe286862[address(arg1)][idx].field_256
        if idx < sub_fe286862[address(arg1)].field_256:
            revert with 0, 17
        if idx - sub_fe286862[address(arg1)].field_256 >= mem[96]:
            revert with 0, 50
        mem[(32 * idx - sub_fe286862[address(arg1)].field_256) + 128] = _124
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _126 = mem[64]
    mem[mem[64]] = 32
    _129 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _129:
        _142 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_142 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _126 + (64 * _129) + -mem[64] + 64
}

function sub_dd1e0122(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not address(arg1):
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _65 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_65 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not arg3:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _68 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_68 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    mem[0] = address(arg1)
    mem[32] = 7
    if arg2 > !sub_fe286862[address(arg1)].field_256:
        revert with 0, 17
    if arg2 + sub_fe286862[address(arg1)].field_256 >= sub_fe286862[address(arg1)].field_0:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _71 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_71 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if arg2 + sub_fe286862[address(arg1)].field_256 > !arg3:
        revert with 0, 17
    if sub_fe286862[address(arg1)].field_0 <= arg2 + sub_fe286862[address(arg1)].field_256 + arg3:
        if sub_fe286862[address(arg1)].field_0 < arg2 + sub_fe286862[address(arg1)].field_256:
            revert with 0, 17
        if sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256 > test266151307():
            revert with 0, 65
        mem[96] = sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256
        mem[64] = (32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 128
        if not sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256:
            idx = arg2 + sub_fe286862[address(arg1)].field_256
            while idx < sub_fe286862[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 7)
                _78 = mem[64]
                mem[64] = mem[64] + 64
                mem[_78] = sub_fe286862[address(arg1)][idx].field_0
                mem[_78 + 32] = sub_fe286862[address(arg1)][idx].field_256
                if idx < arg2 + sub_fe286862[address(arg1)].field_256:
                    revert with 0, 17
                if idx - arg2 - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = _78
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _81 = mem[64]
            mem[mem[64]] = 32
            _83 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _83:
                _113 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_113 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _81 + (64 * _83) + -mem[64] + 64
        mem[64] = (32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 192
        mem[(32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = 0
        mem[(32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 160] = 0
        mem[128] = (32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 128
        s = 128
        idx = sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = 0
            mem[(32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 160] = 0
            mem[s + 32] = (32 * sub_fe286862[address(arg1)].field_0 - arg2 - sub_fe286862[address(arg1)].field_256) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg2 + sub_fe286862[address(arg1)].field_256
        while idx < sub_fe286862[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 7)
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = sub_fe286862[address(arg1)][idx].field_0
            mem[_121 + 32] = sub_fe286862[address(arg1)][idx].field_256
            if idx < arg2 + sub_fe286862[address(arg1)].field_256:
                revert with 0, 17
            if idx - arg2 - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = _121
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _125 = mem[64]
        mem[mem[64]] = 32
        _127 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _127:
            _139 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_139 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _125 + (64 * _127) + -mem[64] + 64
    if arg3 < 0:
        revert with 0, 17
    if arg3 > test266151307():
        revert with 0, 65
    mem[96] = arg3
    mem[64] = (32 * arg3) + 128
    if not arg3:
        idx = arg2 + sub_fe286862[address(arg1)].field_256
        while idx < arg2 + sub_fe286862[address(arg1)].field_256 + arg3:
            if idx >= sub_fe286862[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 7)
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = sub_fe286862[address(arg1)][idx].field_0
            mem[_80 + 32] = sub_fe286862[address(arg1)][idx].field_256
            if idx < arg2 + sub_fe286862[address(arg1)].field_256:
                revert with 0, 17
            if idx - arg2 - sub_fe286862[address(arg1)].field_256 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = _80
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _84 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _84:
            _116 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_116 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _82 + (64 * _84) + -mem[64] + 64
    mem[64] = (32 * arg3) + 192
    mem[(32 * arg3) + 128] = 0
    mem[(32 * arg3) + 160] = 0
    mem[128] = (32 * arg3) + 128
    s = 128
    idx = arg3
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[s + 32] = (32 * arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2 + sub_fe286862[address(arg1)].field_256
    while idx < arg2 + sub_fe286862[address(arg1)].field_256 + arg3:
        if idx >= sub_fe286862[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        _124 = mem[64]
        mem[64] = mem[64] + 64
        mem[_124] = sub_fe286862[address(arg1)][idx].field_0
        mem[_124 + 32] = sub_fe286862[address(arg1)][idx].field_256
        if idx < arg2 + sub_fe286862[address(arg1)].field_256:
            revert with 0, 17
        if idx - arg2 - sub_fe286862[address(arg1)].field_256 >= mem[96]:
            revert with 0, 50
        mem[(32 * idx - arg2 - sub_fe286862[address(arg1)].field_256) + 128] = _124
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _126 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _142 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_142 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _126 + (64 * _128) + -mem[64] + 64
}



}
