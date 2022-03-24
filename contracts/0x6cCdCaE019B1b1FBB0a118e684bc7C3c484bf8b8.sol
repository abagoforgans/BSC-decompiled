contract main {




// =====================  Runtime code  =====================


const sub_30ced2e8(?) = -1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 sub_10c3fedb;
mapping of struct users;
address adminAddress;
address sub_059b44aaAddress;
address sub_b7352a19Address;
address sub_31ca1edfAddress;
address sub_7a5b66b8Address;
address BUSDAddress;
uint256 sub_7f2153c2;

function sub_059b44aa(?) payable {
    return sub_059b44aaAddress
}

function name() payable {
    return name[0 len name.length]
}

function sub_10c3fedb(?) payable {
    return sub_10c3fedb
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_31ca1edf(?) payable {
    return sub_31ca1edfAddress
}

function BUSD() payable {
    return BUSDAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7a5b66b8(?) payable {
    return sub_7a5b66b8Address
}

function sub_7f2153c2(?) payable {
    return sub_7f2153c2
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, users[arg1].field_256
}

function sub_b7352a19(?) payable {
    return sub_b7352a19Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == owner
    adminAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3a896dee(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == owner
    require arg1 > 0
    sub_10c3fedb = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_59096f2f(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == owner
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_becd293f(?) payable {
    require ext_code.size(sub_7a5b66b8Address)
    staticcall sub_7a5b66b8Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_7f2153c2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_324738e9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7a5b66b8Address)
    staticcall sub_7a5b66b8Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / 0 / ext_call.return_data[0]:
                return 0
            if sub_10c3fedb * 0 / 0 / ext_call.return_data[0] / 0 / 0 / ext_call.return_data[0] != sub_10c3fedb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (sub_10c3fedb * 0 / 0 / ext_call.return_data[0] / 10000)
        if sub_7f2153c2 * arg1 / arg1 != sub_7f2153c2:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not sub_7f2153c2 * arg1 / 0 / ext_call.return_data[0]:
            return 0
        if sub_10c3fedb * sub_7f2153c2 * arg1 / 0 / ext_call.return_data[0] / sub_7f2153c2 * arg1 / 0 / ext_call.return_data[0] != sub_10c3fedb:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (sub_10c3fedb * sub_7f2153c2 * arg1 / 0 / ext_call.return_data[0] / 10000)
    if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_7f2153c2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not arg1:
        if not sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if sub_10c3fedb * 0 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_10c3fedb:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (sub_10c3fedb * 0 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] / 10000)
    if sub_7f2153c2 * arg1 / arg1 != sub_7f2153c2:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not sub_7f2153c2 * arg1 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    if sub_10c3fedb * sub_7f2153c2 * arg1 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] / sub_7f2153c2 * arg1 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_10c3fedb:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (sub_10c3fedb * sub_7f2153c2 * arg1 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] / 10000)
}

function sub_238f80f9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7a5b66b8Address)
    staticcall sub_7a5b66b8Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / sub_7f2153c2:
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / sub_10c3fedb)
            if 10000 * 0 / sub_7f2153c2 / 0 / sub_7f2153c2 != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_10c3fedb:
                revert with 0, 'SafeMath: division by zero'
            return (10000 * 0 / sub_7f2153c2 / sub_10c3fedb)
        if 0 / ext_call.return_data[0] * arg1 / arg1 != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not sub_7f2153c2:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2:
            if not sub_10c3fedb:
                revert with 0, 'SafeMath: division by zero'
            return (0 / sub_10c3fedb)
        if 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 != 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_10c3fedb:
            revert with 0, 'SafeMath: division by zero'
        return (10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb)
    if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_7f2153c2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not arg1:
        if not sub_7f2153c2:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / sub_7f2153c2:
            if not sub_10c3fedb:
                revert with 0, 'SafeMath: division by zero'
            return (0 / sub_10c3fedb)
        if 10000 * 0 / sub_7f2153c2 / 0 / sub_7f2153c2 != 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_10c3fedb:
            revert with 0, 'SafeMath: division by zero'
        return (10000 * 0 / sub_7f2153c2 / sub_10c3fedb)
    if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_7f2153c2:
        revert with 0, 'SafeMath: division by zero'
    if not sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2:
        if not sub_10c3fedb:
            revert with 0, 'SafeMath: division by zero'
        return (0 / sub_10c3fedb)
    if 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 != 10000:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_10c3fedb:
        revert with 0, 'SafeMath: division by zero'
    return (10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb)
}

function sub_b38ebde5(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7a5b66b8Address)
    staticcall sub_7a5b66b8Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_31ca1edfAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / sub_7f2153c2:
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / sub_10c3fedb
                if (0 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / sub_10c3fedb
                emit Transfer((0 / sub_10c3fedb), 0, msg.sender);
                if (0 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 0 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 0 / sub_10c3fedb
            else:
                if 10000 * 0 / sub_7f2153c2 / 0 / sub_7f2153c2 != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                emit Transfer((10000 * 0 / sub_7f2153c2 / sub_10c3fedb), 0, msg.sender);
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
        else:
            if 0 / ext_call.return_data[0] * arg1 / arg1 != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2:
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / sub_10c3fedb
                if (0 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / sub_10c3fedb
                emit Transfer((0 / sub_10c3fedb), 0, msg.sender);
                if (0 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 0 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 0 / sub_10c3fedb
            else:
                if 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                mem[580 len 0] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                if (10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                emit Transfer((10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb), 0, msg.sender);
                if (10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 10000 * 0 / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
    else:
        if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_7f2153c2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / sub_7f2153c2:
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / sub_10c3fedb
                if (0 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / sub_10c3fedb
                emit Transfer((0 / sub_10c3fedb), 0, msg.sender);
                if (0 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 0 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 0 / sub_10c3fedb
            else:
                if 10000 * 0 / sub_7f2153c2 / 0 / sub_7f2153c2 != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                mem[580 len 0] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                emit Transfer((10000 * 0 / sub_7f2153c2 / sub_10c3fedb), 0, msg.sender);
                if (10000 * 0 / sub_7f2153c2 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 10000 * 0 / sub_7f2153c2 / sub_10c3fedb
        else:
            if sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2:
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / sub_10c3fedb
                if (0 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / sub_10c3fedb
                emit Transfer((0 / sub_10c3fedb), 0, msg.sender);
                if (0 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 0 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 0 / sub_10c3fedb
            else:
                if 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not sub_10c3fedb:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = 0
                mem[580 len 0] = 0
                call sub_7a5b66b8Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                if (10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                emit Transfer((10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb), 0, msg.sender);
                if (10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb) + users[msg.sender].field_0 < users[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_0 += 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
                if arg1 + users[msg.sender].field_256 < users[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                users[msg.sender].field_256 += arg1
                emit 0x4ddc3887: msg.sender, arg1, 10000 * sub_7f2153c2 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / sub_7f2153c2 / sub_10c3fedb
}

function sub_873c2bbe(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= users[msg.sender].field_0:
        if not arg1:
            if not users[msg.sender].field_0:
                revert with 0, 'SafeMath: division by zero'
            if users[msg.sender].field_256:
                if 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / users[msg.sender].field_256 != 0 / users[msg.sender].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sub_7f2153c2:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                if 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 <= users[msg.sender].field_256:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) >> 32
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) << 224, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 -= 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
                    emit 0xb62640a7: msg.sender, arg1, 0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
                else:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args users[msg.sender].field_256, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if users[msg.sender].field_256 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 = 0
                    emit 0xb62640a7: msg.sender, arg1, users[msg.sender].field_256
            else:
                if not sub_7f2153c2:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                if 0 / sub_7f2153c2 > users[msg.sender].field_256:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args users[msg.sender].field_256, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if users[msg.sender].field_256 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 = 0
                    emit 0xb62640a7: msg.sender, arg1, users[msg.sender].field_256
                else:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / sub_7f2153c2) >> 32
                    mem[612 len 0] = 0
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / sub_7f2153c2) << 224, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if 0 / sub_7f2153c2 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 -= 0 / sub_7f2153c2
                    emit 0xb62640a7: msg.sender, arg1, 0 / sub_7f2153c2
        else:
            if sub_7f2153c2 * arg1 / arg1 != sub_7f2153c2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not users[msg.sender].field_0:
                revert with 0, 'SafeMath: division by zero'
            if not users[msg.sender].field_256:
                if not sub_7f2153c2:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                if 0 / sub_7f2153c2 <= users[msg.sender].field_256:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / sub_7f2153c2) >> 32
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / sub_7f2153c2) << 224, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if 0 / sub_7f2153c2 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 -= 0 / sub_7f2153c2
                    emit 0xb62640a7: msg.sender, arg1, 0 / sub_7f2153c2
                else:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args users[msg.sender].field_256, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if users[msg.sender].field_256 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 = 0
                    emit 0xb62640a7: msg.sender, arg1, users[msg.sender].field_256
            else:
                if sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / users[msg.sender].field_256 != sub_7f2153c2 * arg1 / users[msg.sender].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sub_7f2153c2:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if not ext_code.size(sub_7a5b66b8Address):
                    revert with 0, 'Address: call to non-contract'
                if sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 <= users[msg.sender].field_256:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) >> 32
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) << 224, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 -= sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
                    emit 0xb62640a7: msg.sender, arg1, sub_7f2153c2 * arg1 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
                else:
                    mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                    call sub_7a5b66b8Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args users[msg.sender].field_256, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 > users[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_0 -= arg1
                    if users[msg.sender].field_256 > users[msg.sender].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    users[msg.sender].field_256 = 0
                    emit 0xb62640a7: msg.sender, arg1, users[msg.sender].field_256
    else:
        if not users[msg.sender].field_0:
            revert with 0, 'SafeMath: division by zero'
        if sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 != sub_7f2153c2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not users[msg.sender].field_0:
            revert with 0, 'SafeMath: division by zero'
        if not users[msg.sender].field_256:
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if users[msg.sender].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(msg.sender)] -= users[msg.sender].field_0
            if users[msg.sender].field_0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= users[msg.sender].field_0
            emit Transfer(users[msg.sender].field_0, msg.sender, 0);
            if not ext_code.size(sub_7a5b66b8Address):
                revert with 0, 'Address: call to non-contract'
            if 0 / sub_7f2153c2 <= users[msg.sender].field_256:
                mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / sub_7f2153c2) >> 32
                call sub_7a5b66b8Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / sub_7f2153c2) << 224, mem[612 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if users[msg.sender].field_0 > users[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_0 = 0
                if 0 / sub_7f2153c2 > users[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_256 -= 0 / sub_7f2153c2
                emit 0xb62640a7: msg.sender, users[msg.sender].field_0, 0 / sub_7f2153c2
            else:
                mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                mem[612 len 0] = 0
                call sub_7a5b66b8Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args users[msg.sender].field_256, mem[612 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if users[msg.sender].field_0 > users[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_0 = 0
                if users[msg.sender].field_256 > users[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_256 = 0
                emit 0xb62640a7: msg.sender, users[msg.sender].field_0, users[msg.sender].field_256
        else:
            if sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / users[msg.sender].field_256 != sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_7f2153c2:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if users[msg.sender].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(msg.sender)] -= users[msg.sender].field_0
            if users[msg.sender].field_0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= users[msg.sender].field_0
            emit Transfer(users[msg.sender].field_0, msg.sender, 0);
            if not ext_code.size(sub_7a5b66b8Address):
                revert with 0, 'Address: call to non-contract'
            if sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 <= users[msg.sender].field_256:
                mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) >> 32
                call sub_7a5b66b8Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2) << 224, mem[612 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if users[msg.sender].field_0 > users[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_0 = 0
                if sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2 > users[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_256 -= sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
                emit 0xb62640a7: msg.sender, users[msg.sender].field_0, sub_7f2153c2 * users[msg.sender].field_0 / users[msg.sender].field_0 * users[msg.sender].field_256 / sub_7f2153c2
            else:
                mem[548 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_288
                mem[612 len 0] = 0
                call sub_7a5b66b8Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args users[msg.sender].field_256, mem[612 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if users[msg.sender].field_0 > users[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_0 = 0
                if users[msg.sender].field_256 > users[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                users[msg.sender].field_256 = 0
                emit 0xb62640a7: msg.sender, users[msg.sender].field_0, users[msg.sender].field_256
}



}
