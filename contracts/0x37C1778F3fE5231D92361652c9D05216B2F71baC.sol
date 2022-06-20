contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address TOKENAddress;
address CURRENCYAddress;
uint8 stor4; offset 160
address OWNER;
uint256 sub_d032497c;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20;
mapping of struct bUYERS;
mapping of uint8 stor22;

function BUYERS(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bUYERS[arg1].field_0, bUYERS[arg1].field_256
}

function OWNER() {
    return OWNER
}

function sub_71a34298(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function TOKEN() {
    return TOKENAddress
}

function owner() {
    return owner
}

function sub_d032497c(?) {
    return sub_d032497c
}

function CURRENCY() {
    return CURRENCYAddress
}

function _fallback() payable {
    revert
}

function round() {
    if stor8 > stor13:
        return 1
    return 2
}

function SETTINGS() {
    return stor16, stor17, stor18, stor19, bool(stor20)
}

function sub_1c0a00f5(?) {
    if stor15 >= 4:
        revert with 0, 33
    return stor6, stor7, stor8, stor9, stor10, stor11, stor12, stor13, stor14, stor15
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function forceFail() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor15 > 3:
        revert with 0, 33
    require stor15 != 2
    stor15 = 3
}

function sub_1947ac90(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    stor7 = arg1
    stor10 = arg2
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

function status() {
    if not stor4:
        return 0
    if stor15 > 3:
        revert with 0, 33
    if stor15 == 3:
        return 3
    if block.timestamp > stor19:
        if stor12 < stor17:
            return 3
    if stor12 >= stor16:
        return 2
    if block.timestamp > stor19:
        if stor12 >= stor17:
            return 2
    if block.timestamp < stor18:
        return 0
    if block.timestamp > stor19:
        return 0
    return 1
}

function sub_6f8b55d5(?) {
    require calldata.size - 4 >= 32
    if arg1 != 1:
        if arg1 != 2:
            return 0
        if stor16 < stor12:
            revert with 0, 17
        return (stor16 - stor12)
    if not stor6:
        revert with 0, 18
    if stor8 / stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * stor8 / stor6 < stor12:
        revert with 0, 17
    return ((10^18 * stor8 / stor6) - stor12)
}

function withdrawTokens() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor15 > 3:
        revert with 0, 33
    if stor15 != 2:
        revert with 0, 'Not completed'
    if stor22[msg.sender]:
        revert with 0, 'Already claimed'
    stor22[msg.sender] = 1
    if not bUYERS[msg.sender].field_256:
        revert with 0, 'Nothing to withdraw'
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, bUYERS[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 1
}

function forceEnd() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor15 > 3:
        revert with 0, 33
    require stor15 != 2
    if not stor4:
        revert with 0, 'Not active'
    if stor15 > 3:
        revert with 0, 33
    if stor15 == 3:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        if stor12 < stor17:
            revert with 0, 'Not active'
    if stor12 >= stor16:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        if stor12 >= stor17:
            revert with 0, 'Not active'
    if block.timestamp < stor18:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        revert with 0, 'Not active'
    if stor12 >= stor17:
        stor19 = block.timestamp
}

function stopSell() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4:
        revert with 0, 'Not initialized'
    if stor15 > 3:
        revert with 0, 33
    if stor15 == 3:
        revert with 0, 'Already started'
    if block.timestamp > stor19:
        if stor12 < stor17:
            revert with 0, 'Already started'
    if stor12 >= stor16:
        revert with 0, 'Already started'
    if block.timestamp > stor19:
        if stor12 >= stor17:
            revert with 0, 'Already started'
    if block.timestamp >= stor18:
        if block.timestamp <= stor19:
            revert with 0, 'Already started'
    if block.timestamp > -43201:
        revert with 0, 17
    sub_d032497c = block.timestamp + (12 * 3600)
    if stor18 <= block.timestamp + (12 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too close to start, less than 12h away'
    stor4 = 0
    stor18 = 1139567 * 3600
}

function sub_97bc72d4(?) {
    require calldata.size - 4 >= 352
    require arg10 == bool(arg10)
    require arg11 == address(arg11)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor4
    stor8 = arg1
    stor6 = arg2
    stor7 = arg3
    stor11 = arg4
    stor9 = arg5
    stor10 = arg6
    if not arg5:
        revert with 0, 18
    if not stor6:
        revert with 0, 18
    if stor8 / stor6 > !(arg4 / arg5):
        revert with 0, 17
    if (stor8 / stor6) + (arg4 / arg5) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    stor16 = (10^18 * stor8 / stor6) + (10^18 * arg4 / arg5)
    stor17 = arg7
    stor18 = arg8
    stor19 = arg9
    stor15 = 1
    OWNER = owner
    stor20 = uint8(bool(arg10))
    if not arg10:
        require address(arg11)
        CURRENCYAddress = address(arg11)
    if stor8 > !stor11:
        revert with 0, 17
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor8 + stor11 > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens in contract'
    stor4 = 1
}

function ownerWithdrawTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    else:
        require stor4
        if stor15 > 3:
            revert with 0, 33
        else:
            if stor15 != 3:
                if block.timestamp <= stor19:
                    require stor12 < stor16
                    if block.timestamp <= stor19:
                        require block.timestamp >= stor18
                        require block.timestamp <= stor19
                        revert
                    else:
                        require stor12 < stor17
                        require block.timestamp >= stor18
                        require block.timestamp <= stor19
                        revert
                else:
                    if stor12 >= stor17:
                        require stor12 < stor16
                        if block.timestamp <= stor19:
                            require block.timestamp >= stor18
                            require block.timestamp <= stor19
                            revert
                        else:
                            require stor12 < stor17
                            require block.timestamp >= stor18
                            require block.timestamp <= stor19
                            revert
                    else:
                        require ext_code.size(TOKENAddress)
                        staticcall TOKENAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(TOKENAddress)
                            call TOKENAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args OWNER, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(TOKENAddress)
                staticcall TOKENAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_code.size(TOKENAddress)
                    call TOKENAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args OWNER, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawCurrency() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor0 = 2
        if not stor4:
            revert with 0, 'Not failed'
        else:
            if stor15 > 3:
                revert with 0, 33
            else:
                if stor15 != 3:
                    if block.timestamp <= stor19:
                        if stor12 >= stor16:
                            revert with 0, 'Not failed'
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp < stor18:
                                    revert with 0, 'Not failed'
                                else:
                                    if block.timestamp <= stor19:
                                        revert with 0, 'Not failed'
                                    else:
                                        revert with 0, 'Not failed'
                            else:
                                if stor12 >= stor17:
                                    revert with 0, 'Not failed'
                                else:
                                    if block.timestamp < stor18:
                                        revert with 0, 'Not failed'
                                    else:
                                        if block.timestamp <= stor19:
                                            revert with 0, 'Not failed'
                                        else:
                                            revert with 0, 'Not failed'
                    else:
                        if stor12 >= stor17:
                            if stor12 >= stor16:
                                revert with 0, 'Not failed'
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp < stor18:
                                        revert with 0, 'Not failed'
                                    else:
                                        if block.timestamp <= stor19:
                                            revert with 0, 'Not failed'
                                        else:
                                            revert with 0, 'Not failed'
                                else:
                                    if stor12 >= stor17:
                                        revert with 0, 'Not failed'
                                    else:
                                        if block.timestamp < stor18:
                                            revert with 0, 'Not failed'
                                        else:
                                            if block.timestamp <= stor19:
                                                revert with 0, 'Not failed'
                                            else:
                                                revert with 0, 'Not failed'
                        else:
                            if stor22[msg.sender]:
                                revert with 0, 'Already claimed'
                            else:
                                stor22[msg.sender] = 1
                                if not bUYERS[msg.sender].field_0:
                                    revert with 0, 'Nothing to withdraw'
                                else:
                                    if not stor20:
                                        require ext_code.size(CURRENCYAddress)
                                        call CURRENCYAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, bUYERS[msg.sender].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            stor0 = 1
                                    else:
                                        call msg.sender with:
                                           value bUYERS[msg.sender].field_0 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            stor0 = 1
                else:
                    if stor22[msg.sender]:
                        revert with 0, 'Already claimed'
                    else:
                        stor22[msg.sender] = 1
                        if not bUYERS[msg.sender].field_0:
                            revert with 0, 'Nothing to withdraw'
                        else:
                            if not stor20:
                                require ext_code.size(CURRENCYAddress)
                                call CURRENCYAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, bUYERS[msg.sender].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    stor0 = 1
                            else:
                                call msg.sender with:
                                   value bUYERS[msg.sender].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor0 = 1
}

function sub_310f6adc(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    else:
        if not stor4:
            revert with 0, 'NOT SUCCESS'
        else:
            if stor15 > 3:
                revert with 0, 33
            else:
                if stor15 == 3:
                    revert with 0, 'NOT SUCCESS'
                else:
                    if block.timestamp <= stor19:
                        if stor12 < stor16:
                            if block.timestamp <= stor19:
                                if block.timestamp < stor18:
                                    revert with 0, 'NOT SUCCESS'
                                else:
                                    if block.timestamp <= stor19:
                                        revert with 0, 'NOT SUCCESS'
                                    else:
                                        revert with 0, 'NOT SUCCESS'
                            else:
                                if stor12 < stor17:
                                    if block.timestamp < stor18:
                                        revert with 0, 'NOT SUCCESS'
                                    else:
                                        if block.timestamp <= stor19:
                                            revert with 0, 'NOT SUCCESS'
                                        else:
                                            revert with 0, 'NOT SUCCESS'
                                else:
                                    if not CURRENCYAddress:
                                        if not eth.balance(this.address):
                                        else:
                                            call OWNER with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require ext_code.size(CURRENCYAddress)
                                        staticcall CURRENCYAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_code.size(CURRENCYAddress)
                                            call CURRENCYAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args OWNER, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not eth.balance(this.address):
                                                else:
                                                    call OWNER with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                        else:
                            if not CURRENCYAddress:
                                if not eth.balance(this.address):
                                else:
                                    call OWNER with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require ext_code.size(CURRENCYAddress)
                                staticcall CURRENCYAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(CURRENCYAddress)
                                    call CURRENCYAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args OWNER, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not eth.balance(this.address):
                                        else:
                                            call OWNER with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                    else:
                        if stor12 < stor17:
                            revert with 0, 'NOT SUCCESS'
                        else:
                            if stor12 < stor16:
                                if block.timestamp <= stor19:
                                    if block.timestamp < stor18:
                                        revert with 0, 'NOT SUCCESS'
                                    else:
                                        if block.timestamp <= stor19:
                                            revert with 0, 'NOT SUCCESS'
                                        else:
                                            revert with 0, 'NOT SUCCESS'
                                else:
                                    if stor12 < stor17:
                                        if block.timestamp < stor18:
                                            revert with 0, 'NOT SUCCESS'
                                        else:
                                            if block.timestamp <= stor19:
                                                revert with 0, 'NOT SUCCESS'
                                            else:
                                                revert with 0, 'NOT SUCCESS'
                                    else:
                                        if not CURRENCYAddress:
                                            if not eth.balance(this.address):
                                            else:
                                                call OWNER with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            require ext_code.size(CURRENCYAddress)
                                            staticcall CURRENCYAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(CURRENCYAddress)
                                                call CURRENCYAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args OWNER, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not eth.balance(this.address):
                                                    else:
                                                        call OWNER with:
                                                           value eth.balance(this.address) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                if not CURRENCYAddress:
                                    if not eth.balance(this.address):
                                    else:
                                        call OWNER with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require ext_code.size(CURRENCYAddress)
                                    staticcall CURRENCYAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(CURRENCYAddress)
                                        call CURRENCYAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args OWNER, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not eth.balance(this.address):
                                            else:
                                                call OWNER with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor4:
        revert with 0, 'Not active'
    if stor15 > 3:
        revert with 0, 33
    if stor15 == 3:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        if stor12 < stor17:
            revert with 0, 'Not active'
    if stor12 >= stor16:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        if stor12 >= stor17:
            revert with 0, 'Not active'
    if block.timestamp < stor18:
        revert with 0, 'Not active'
    if block.timestamp > stor19:
        revert with 0, 'Not active'
    if stor20:
        if msg.value <= 0:
            revert with 0, 'Invalid amount'
        if stor8 <= stor13:
            if stor10 < bUYERS[msg.sender].field_0:
                revert with 0, 17
            if stor16 < stor12:
                revert with 0, 17
            if stor10 - bUYERS[msg.sender].field_0 > stor16 - stor12:
                if msg.value <= stor16 - stor12:
                    if not msg.value:
                        if stor16 - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if msg.value and stor9 > -1 / msg.value:
                            revert with 0, 17
                        if msg.value * stor9 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !msg.value:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += msg.value
                        if bUYERS[msg.sender].field_256 > !(msg.value * stor9 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += msg.value * stor9 / 10^18
                        if stor12 > !msg.value:
                            revert with 0, 17
                        stor12 += msg.value
                        if stor13 > !(msg.value * stor9 / 10^18):
                            revert with 0, 17
                        stor13 += msg.value * stor9 / 10^18
                    if stor20:
                        if msg.value < msg.value:
                            revert with 0, 17
                else:
                    if not stor16 - stor12:
                        if stor16 - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor16 - stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor16 - stor12 and stor9 > -1 / stor16 - stor12:
                            revert with 0, 17
                        if (stor16 * stor9) - (stor12 * stor9) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor16 - stor12):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = bUYERS[msg.sender].field_0 + stor16 - stor12
                        if bUYERS[msg.sender].field_256 > !((stor16 * stor9) - (stor12 * stor9) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor16 * stor9) - (stor12 * stor9) / 10^18
                        if stor12 > !(stor16 - stor12):
                            revert with 0, 17
                        stor12 = stor16
                        if stor13 > !((stor16 * stor9) - (stor12 * stor9) / 10^18):
                            revert with 0, 17
                        stor13 += (stor16 * stor9) - (stor12 * stor9) / 10^18
                    if stor20:
                        if stor16 - stor12 < msg.value:
                            if msg.value < stor16 - stor12:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor16 + stor12 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.value <= stor10 - bUYERS[msg.sender].field_0:
                    if not msg.value:
                        if stor10 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if msg.value and stor9 > -1 / msg.value:
                            revert with 0, 17
                        if msg.value * stor9 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !msg.value:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += msg.value
                        if bUYERS[msg.sender].field_256 > !(msg.value * stor9 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += msg.value * stor9 / 10^18
                        if stor12 > !msg.value:
                            revert with 0, 17
                        stor12 += msg.value
                        if stor13 > !(msg.value * stor9 / 10^18):
                            revert with 0, 17
                        stor13 += msg.value * stor9 / 10^18
                    if stor20:
                        if msg.value < msg.value:
                            revert with 0, 17
                else:
                    if not stor10 - bUYERS[msg.sender].field_0:
                        if stor10 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor10 - bUYERS[msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor10 - bUYERS[msg.sender].field_0 and stor9 > -1 / stor10 - bUYERS[msg.sender].field_0:
                            revert with 0, 17
                        if (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor10 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = stor10
                        if bUYERS[msg.sender].field_256 > !((stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18
                        if stor12 > !(stor10 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        stor12 = stor12 + stor10 - bUYERS[msg.sender].field_0
                        if stor13 > !((stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18):
                            revert with 0, 17
                        stor13 += (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18
                    if stor20:
                        if stor10 - bUYERS[msg.sender].field_0 < msg.value:
                            if msg.value < stor10 - bUYERS[msg.sender].field_0:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor10 + bUYERS[msg.sender].field_0 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor7 < bUYERS[msg.sender].field_0:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor8 / stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * stor8 / stor6 < stor12:
                revert with 0, 17
            if stor7 - bUYERS[msg.sender].field_0 > (10^18 * stor8 / stor6) - stor12:
                if msg.value <= (10^18 * stor8 / stor6) - stor12:
                    if not msg.value:
                        if (10^18 * stor8 / stor6) - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if msg.value and stor6 > -1 / msg.value:
                            revert with 0, 17
                        if msg.value * stor6 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !msg.value:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += msg.value
                        if bUYERS[msg.sender].field_256 > !(msg.value * stor6 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += msg.value * stor6 / 10^18
                        if stor12 > !msg.value:
                            revert with 0, 17
                        stor12 += msg.value
                        if stor13 > !(msg.value * stor6 / 10^18):
                            revert with 0, 17
                        stor13 += msg.value * stor6 / 10^18
                    if stor20:
                        if msg.value < msg.value:
                            revert with 0, 17
                else:
                    if not (10^18 * stor8 / stor6) - stor12:
                        if (10^18 * stor8 / stor6) - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor8 / stor6) - stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if (10^18 * stor8 / stor6) - stor12 and stor6 > -1 / (10^18 * stor8 / stor6) - stor12:
                            revert with 0, 17
                        if (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !((10^18 * stor8 / stor6) - stor12):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = bUYERS[msg.sender].field_0 + (10^18 * stor8 / stor6) - stor12
                        if bUYERS[msg.sender].field_256 > !((10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18
                        if stor12 > !((10^18 * stor8 / stor6) - stor12):
                            revert with 0, 17
                        stor12 = 10^18 * stor8 / stor6
                        if stor13 > !((10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18):
                            revert with 0, 17
                        stor13 += (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18
                    if stor20:
                        if (10^18 * stor8 / stor6) - stor12 < msg.value:
                            if msg.value < (10^18 * stor8 / stor6) - stor12:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - (10^18 * stor8 / stor6) + stor12 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.value <= stor7 - bUYERS[msg.sender].field_0:
                    if not msg.value:
                        if stor7 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if msg.value and stor6 > -1 / msg.value:
                            revert with 0, 17
                        if msg.value * stor6 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !msg.value:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += msg.value
                        if bUYERS[msg.sender].field_256 > !(msg.value * stor6 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += msg.value * stor6 / 10^18
                        if stor12 > !msg.value:
                            revert with 0, 17
                        stor12 += msg.value
                        if stor13 > !(msg.value * stor6 / 10^18):
                            revert with 0, 17
                        stor13 += msg.value * stor6 / 10^18
                    if stor20:
                        if msg.value < msg.value:
                            revert with 0, 17
                else:
                    if not stor7 - bUYERS[msg.sender].field_0:
                        if stor7 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor7 - bUYERS[msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor7 - bUYERS[msg.sender].field_0 and stor6 > -1 / stor7 - bUYERS[msg.sender].field_0:
                            revert with 0, 17
                        if (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor7 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = stor7
                        if bUYERS[msg.sender].field_256 > !((stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18
                        if stor12 > !(stor7 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        stor12 = stor12 + stor7 - bUYERS[msg.sender].field_0
                        if stor13 > !((stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18):
                            revert with 0, 17
                        stor13 += (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18
                    if stor20:
                        if stor7 - bUYERS[msg.sender].field_0 < msg.value:
                            if msg.value < stor7 - bUYERS[msg.sender].field_0:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor7 + bUYERS[msg.sender].field_0 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 <= 0:
            revert with 0, 'Invalid amount'
        if stor8 <= stor13:
            if stor10 < bUYERS[msg.sender].field_0:
                revert with 0, 17
            if stor16 < stor12:
                revert with 0, 17
            if stor10 - bUYERS[msg.sender].field_0 > stor16 - stor12:
                if arg1 <= stor16 - stor12:
                    if not arg1:
                        if stor16 - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if arg1 and stor9 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * stor9 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += arg1
                        if bUYERS[msg.sender].field_256 > !(arg1 * stor9 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += arg1 * stor9 / 10^18
                        if stor12 > !arg1:
                            revert with 0, 17
                        stor12 += arg1
                        if stor13 > !(arg1 * stor9 / 10^18):
                            revert with 0, 17
                        stor13 += arg1 * stor9 / 10^18
                    if stor20:
                        if arg1 < msg.value:
                            if msg.value < arg1:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor16 - stor12:
                        if stor16 - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor16 - stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor16 - stor12 and stor9 > -1 / stor16 - stor12:
                            revert with 0, 17
                        if (stor16 * stor9) - (stor12 * stor9) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor16 - stor12):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = bUYERS[msg.sender].field_0 + stor16 - stor12
                        if bUYERS[msg.sender].field_256 > !((stor16 * stor9) - (stor12 * stor9) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor16 * stor9) - (stor12 * stor9) / 10^18
                        if stor12 > !(stor16 - stor12):
                            revert with 0, 17
                        stor12 = stor16
                        if stor13 > !((stor16 * stor9) - (stor12 * stor9) / 10^18):
                            revert with 0, 17
                        stor13 += (stor16 * stor9) - (stor12 * stor9) / 10^18
                    if stor20:
                        if stor16 - stor12 < msg.value:
                            if msg.value < stor16 - stor12:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor16 + stor12 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1 <= stor10 - bUYERS[msg.sender].field_0:
                    if not arg1:
                        if stor10 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if arg1 and stor9 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * stor9 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += arg1
                        if bUYERS[msg.sender].field_256 > !(arg1 * stor9 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += arg1 * stor9 / 10^18
                        if stor12 > !arg1:
                            revert with 0, 17
                        stor12 += arg1
                        if stor13 > !(arg1 * stor9 / 10^18):
                            revert with 0, 17
                        stor13 += arg1 * stor9 / 10^18
                    if stor20:
                        if arg1 < msg.value:
                            if msg.value < arg1:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor10 - bUYERS[msg.sender].field_0:
                        if stor10 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor10 - bUYERS[msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor10 - bUYERS[msg.sender].field_0 and stor9 > -1 / stor10 - bUYERS[msg.sender].field_0:
                            revert with 0, 17
                        if (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor10 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = stor10
                        if bUYERS[msg.sender].field_256 > !((stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18
                        if stor12 > !(stor10 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        stor12 = stor12 + stor10 - bUYERS[msg.sender].field_0
                        if stor13 > !((stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18):
                            revert with 0, 17
                        stor13 += (stor10 * stor9) - (bUYERS[msg.sender].field_0 * stor9) / 10^18
                    if stor20:
                        if stor10 - bUYERS[msg.sender].field_0 < msg.value:
                            if msg.value < stor10 - bUYERS[msg.sender].field_0:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor10 + bUYERS[msg.sender].field_0 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor7 < bUYERS[msg.sender].field_0:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor8 / stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * stor8 / stor6 < stor12:
                revert with 0, 17
            if stor7 - bUYERS[msg.sender].field_0 > (10^18 * stor8 / stor6) - stor12:
                if arg1 <= (10^18 * stor8 / stor6) - stor12:
                    if not arg1:
                        if (10^18 * stor8 / stor6) - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if arg1 and stor6 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * stor6 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += arg1
                        if bUYERS[msg.sender].field_256 > !(arg1 * stor6 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += arg1 * stor6 / 10^18
                        if stor12 > !arg1:
                            revert with 0, 17
                        stor12 += arg1
                        if stor13 > !(arg1 * stor6 / 10^18):
                            revert with 0, 17
                        stor13 += arg1 * stor6 / 10^18
                    if stor20:
                        if arg1 < msg.value:
                            if msg.value < arg1:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not (10^18 * stor8 / stor6) - stor12:
                        if (10^18 * stor8 / stor6) - stor12 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor8 / stor6) - stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if (10^18 * stor8 / stor6) - stor12 and stor6 > -1 / (10^18 * stor8 / stor6) - stor12:
                            revert with 0, 17
                        if (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !((10^18 * stor8 / stor6) - stor12):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = bUYERS[msg.sender].field_0 + (10^18 * stor8 / stor6) - stor12
                        if bUYERS[msg.sender].field_256 > !((10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18
                        if stor12 > !((10^18 * stor8 / stor6) - stor12):
                            revert with 0, 17
                        stor12 = 10^18 * stor8 / stor6
                        if stor13 > !((10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18):
                            revert with 0, 17
                        stor13 += (10^18 * stor8 / stor6 * stor6) - (stor12 * stor6) / 10^18
                    if stor20:
                        if (10^18 * stor8 / stor6) - stor12 < msg.value:
                            if msg.value < (10^18 * stor8 / stor6) - stor12:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - (10^18 * stor8 / stor6) + stor12 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1 <= stor7 - bUYERS[msg.sender].field_0:
                    if not arg1:
                        if stor7 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if arg1 and stor6 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * stor6 / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 += arg1
                        if bUYERS[msg.sender].field_256 > !(arg1 * stor6 / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += arg1 * stor6 / 10^18
                        if stor12 > !arg1:
                            revert with 0, 17
                        stor12 += arg1
                        if stor13 > !(arg1 * stor6 / 10^18):
                            revert with 0, 17
                        stor13 += arg1 * stor6 / 10^18
                    if stor20:
                        if arg1 < msg.value:
                            if msg.value < arg1:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor7 - bUYERS[msg.sender].field_0:
                        if stor7 - bUYERS[msg.sender].field_0 <= 0:
                            revert with 0, 'Not possible to buy more'
                    else:
                        if not stor20:
                            require ext_code.size(CURRENCYAddress)
                            call CURRENCYAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor7 - bUYERS[msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Transfer error'
                        if stor7 - bUYERS[msg.sender].field_0 and stor6 > -1 / stor7 - bUYERS[msg.sender].field_0:
                            revert with 0, 17
                        if (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18 <= 0:
                            revert with 0, 'ZERO TOKENS'
                        if not bUYERS[msg.sender].field_0:
                            if stor14 == -1:
                                revert with 0, 17
                            stor14++
                        if bUYERS[msg.sender].field_0 > !(stor7 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        bUYERS[msg.sender].field_0 = stor7
                        if bUYERS[msg.sender].field_256 > !((stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18):
                            revert with 0, 17
                        bUYERS[msg.sender].field_256 += (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18
                        if stor12 > !(stor7 - bUYERS[msg.sender].field_0):
                            revert with 0, 17
                        stor12 = stor12 + stor7 - bUYERS[msg.sender].field_0
                        if stor13 > !((stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18):
                            revert with 0, 17
                        stor13 += (stor7 * stor6) - (bUYERS[msg.sender].field_0 * stor6) / 10^18
                    if stor20:
                        if stor7 - bUYERS[msg.sender].field_0 < msg.value:
                            if msg.value < stor7 - bUYERS[msg.sender].field_0:
                                revert with 0, 17
                            call msg.sender with:
                               value msg.value - stor7 + bUYERS[msg.sender].field_0 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function finish() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor0 = 2
        if stor15 > 3:
            revert with 0, 33
        else:
            if stor15 == 2:
                revert with 0, 'GENERATION COMPLETE'
            else:
                if not stor4:
                    revert with 0, 'NOT SUCCESS'
                else:
                    if stor15 > 3:
                        revert with 0, 33
                    else:
                        if stor15 == 3:
                            revert with 0, 'NOT SUCCESS'
                        else:
                            if block.timestamp <= stor19:
                                if stor12 < stor16:
                                    if block.timestamp <= stor19:
                                        if block.timestamp < stor18:
                                            revert with 0, 'NOT SUCCESS'
                                        else:
                                            if block.timestamp <= stor19:
                                                revert with 0, 'NOT SUCCESS'
                                            else:
                                                revert with 0, 'NOT SUCCESS'
                                    else:
                                        if stor12 < stor17:
                                            if block.timestamp < stor18:
                                                revert with 0, 'NOT SUCCESS'
                                            else:
                                                if block.timestamp <= stor19:
                                                    revert with 0, 'NOT SUCCESS'
                                                else:
                                                    revert with 0, 'NOT SUCCESS'
                                        else:
                                            if not CURRENCYAddress:
                                                if not eth.balance(this.address):
                                                    require ext_code.size(TOKENAddress)
                                                    staticcall TOKENAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= stor13:
                                                            stor15 = 2
                                                            stor0 = 1
                                                        else:
                                                            if ext_call.return_data[0] < stor13:
                                                                revert with 0, 17
                                                            else:
                                                                require ext_code.size(TOKENAddress)
                                                                call TOKENAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args 57005, ext_call.return_data[0] - stor13
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    stor15 = 2
                                                                    stor0 = 1
                                                else:
                                                    call OWNER with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(TOKENAddress)
                                                        staticcall TOKENAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] <= stor13:
                                                                stor15 = 2
                                                                stor0 = 1
                                                            else:
                                                                if ext_call.return_data[0] < stor13:
                                                                    revert with 0, 17
                                                                else:
                                                                    require ext_code.size(TOKENAddress)
                                                                    call TOKENAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args 57005, ext_call.return_data[0] - stor13
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        stor15 = 2
                                                                        stor0 = 1
                                            else:
                                                require ext_code.size(CURRENCYAddress)
                                                staticcall CURRENCYAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_code.size(CURRENCYAddress)
                                                    call CURRENCYAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args OWNER, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not eth.balance(this.address):
                                                            require ext_code.size(TOKENAddress)
                                                            staticcall TOKENAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] <= stor13:
                                                                    stor15 = 2
                                                                    stor0 = 1
                                                                else:
                                                                    if ext_call.return_data[0] < stor13:
                                                                        revert with 0, 17
                                                                    else:
                                                                        require ext_code.size(TOKENAddress)
                                                                        call TOKENAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args 57005, ext_call.return_data[0] - stor13
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            stor15 = 2
                                                                            stor0 = 1
                                                        else:
                                                            call OWNER with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(TOKENAddress)
                                                                staticcall TOKENAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] <= stor13:
                                                                        stor15 = 2
                                                                        stor0 = 1
                                                                    else:
                                                                        if ext_call.return_data[0] < stor13:
                                                                            revert with 0, 17
                                                                        else:
                                                                            require ext_code.size(TOKENAddress)
                                                                            call TOKENAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args 57005, ext_call.return_data[0] - stor13
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                stor15 = 2
                                                                                stor0 = 1
                                else:
                                    if not CURRENCYAddress:
                                        if not eth.balance(this.address):
                                            require ext_code.size(TOKENAddress)
                                            staticcall TOKENAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= stor13:
                                                    stor15 = 2
                                                    stor0 = 1
                                                else:
                                                    if ext_call.return_data[0] < stor13:
                                                        revert with 0, 17
                                                    else:
                                                        require ext_code.size(TOKENAddress)
                                                        call TOKENAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args 57005, ext_call.return_data[0] - stor13
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            stor15 = 2
                                                            stor0 = 1
                                        else:
                                            call OWNER with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(TOKENAddress)
                                                staticcall TOKENAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= stor13:
                                                        stor15 = 2
                                                        stor0 = 1
                                                    else:
                                                        if ext_call.return_data[0] < stor13:
                                                            revert with 0, 17
                                                        else:
                                                            require ext_code.size(TOKENAddress)
                                                            call TOKENAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args 57005, ext_call.return_data[0] - stor13
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                stor15 = 2
                                                                stor0 = 1
                                    else:
                                        require ext_code.size(CURRENCYAddress)
                                        staticcall CURRENCYAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_code.size(CURRENCYAddress)
                                            call CURRENCYAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args OWNER, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not eth.balance(this.address):
                                                    require ext_code.size(TOKENAddress)
                                                    staticcall TOKENAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= stor13:
                                                            stor15 = 2
                                                            stor0 = 1
                                                        else:
                                                            if ext_call.return_data[0] < stor13:
                                                                revert with 0, 17
                                                            else:
                                                                require ext_code.size(TOKENAddress)
                                                                call TOKENAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args 57005, ext_call.return_data[0] - stor13
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    stor15 = 2
                                                                    stor0 = 1
                                                else:
                                                    call OWNER with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(TOKENAddress)
                                                        staticcall TOKENAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] <= stor13:
                                                                stor15 = 2
                                                                stor0 = 1
                                                            else:
                                                                if ext_call.return_data[0] < stor13:
                                                                    revert with 0, 17
                                                                else:
                                                                    require ext_code.size(TOKENAddress)
                                                                    call TOKENAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args 57005, ext_call.return_data[0] - stor13
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        stor15 = 2
                                                                        stor0 = 1
                            else:
                                if stor12 < stor17:
                                    revert with 0, 'NOT SUCCESS'
                                else:
                                    if stor12 < stor16:
                                        if block.timestamp <= stor19:
                                            if block.timestamp < stor18:
                                                revert with 0, 'NOT SUCCESS'
                                            else:
                                                if block.timestamp <= stor19:
                                                    revert with 0, 'NOT SUCCESS'
                                                else:
                                                    revert with 0, 'NOT SUCCESS'
                                        else:
                                            if stor12 < stor17:
                                                if block.timestamp < stor18:
                                                    revert with 0, 'NOT SUCCESS'
                                                else:
                                                    if block.timestamp <= stor19:
                                                        revert with 0, 'NOT SUCCESS'
                                                    else:
                                                        revert with 0, 'NOT SUCCESS'
                                            else:
                                                if not CURRENCYAddress:
                                                    if not eth.balance(this.address):
                                                        require ext_code.size(TOKENAddress)
                                                        staticcall TOKENAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] <= stor13:
                                                                stor15 = 2
                                                                stor0 = 1
                                                            else:
                                                                if ext_call.return_data[0] < stor13:
                                                                    revert with 0, 17
                                                                else:
                                                                    require ext_code.size(TOKENAddress)
                                                                    call TOKENAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args 57005, ext_call.return_data[0] - stor13
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        stor15 = 2
                                                                        stor0 = 1
                                                    else:
                                                        call OWNER with:
                                                           value eth.balance(this.address) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(TOKENAddress)
                                                            staticcall TOKENAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] <= stor13:
                                                                    stor15 = 2
                                                                    stor0 = 1
                                                                else:
                                                                    if ext_call.return_data[0] < stor13:
                                                                        revert with 0, 17
                                                                    else:
                                                                        require ext_code.size(TOKENAddress)
                                                                        call TOKENAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args 57005, ext_call.return_data[0] - stor13
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            stor15 = 2
                                                                            stor0 = 1
                                                else:
                                                    require ext_code.size(CURRENCYAddress)
                                                    staticcall CURRENCYAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_code.size(CURRENCYAddress)
                                                        call CURRENCYAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args OWNER, ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not eth.balance(this.address):
                                                                require ext_code.size(TOKENAddress)
                                                                staticcall TOKENAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] <= stor13:
                                                                        stor15 = 2
                                                                        stor0 = 1
                                                                    else:
                                                                        if ext_call.return_data[0] < stor13:
                                                                            revert with 0, 17
                                                                        else:
                                                                            require ext_code.size(TOKENAddress)
                                                                            call TOKENAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args 57005, ext_call.return_data[0] - stor13
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                stor15 = 2
                                                                                stor0 = 1
                                                            else:
                                                                call OWNER with:
                                                                   value eth.balance(this.address) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(TOKENAddress)
                                                                    staticcall TOKENAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] <= stor13:
                                                                            stor15 = 2
                                                                            stor0 = 1
                                                                        else:
                                                                            if ext_call.return_data[0] < stor13:
                                                                                revert with 0, 17
                                                                            else:
                                                                                require ext_code.size(TOKENAddress)
                                                                                call TOKENAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args 57005, ext_call.return_data[0] - stor13
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                    stor15 = 2
                                                                                    stor0 = 1
                                    else:
                                        if not CURRENCYAddress:
                                            if not eth.balance(this.address):
                                                require ext_code.size(TOKENAddress)
                                                staticcall TOKENAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= stor13:
                                                        stor15 = 2
                                                        stor0 = 1
                                                    else:
                                                        if ext_call.return_data[0] < stor13:
                                                            revert with 0, 17
                                                        else:
                                                            require ext_code.size(TOKENAddress)
                                                            call TOKENAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args 57005, ext_call.return_data[0] - stor13
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                stor15 = 2
                                                                stor0 = 1
                                            else:
                                                call OWNER with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(TOKENAddress)
                                                    staticcall TOKENAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= stor13:
                                                            stor15 = 2
                                                            stor0 = 1
                                                        else:
                                                            if ext_call.return_data[0] < stor13:
                                                                revert with 0, 17
                                                            else:
                                                                require ext_code.size(TOKENAddress)
                                                                call TOKENAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args 57005, ext_call.return_data[0] - stor13
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    stor15 = 2
                                                                    stor0 = 1
                                        else:
                                            require ext_code.size(CURRENCYAddress)
                                            staticcall CURRENCYAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(CURRENCYAddress)
                                                call CURRENCYAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args OWNER, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not eth.balance(this.address):
                                                        require ext_code.size(TOKENAddress)
                                                        staticcall TOKENAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] <= stor13:
                                                                stor15 = 2
                                                                stor0 = 1
                                                            else:
                                                                if ext_call.return_data[0] < stor13:
                                                                    revert with 0, 17
                                                                else:
                                                                    require ext_code.size(TOKENAddress)
                                                                    call TOKENAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args 57005, ext_call.return_data[0] - stor13
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        stor15 = 2
                                                                        stor0 = 1
                                                    else:
                                                        call OWNER with:
                                                           value eth.balance(this.address) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(TOKENAddress)
                                                            staticcall TOKENAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] <= stor13:
                                                                    stor15 = 2
                                                                    stor0 = 1
                                                                else:
                                                                    if ext_call.return_data[0] < stor13:
                                                                        revert with 0, 17
                                                                    else:
                                                                        require ext_code.size(TOKENAddress)
                                                                        call TOKENAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args 57005, ext_call.return_data[0] - stor13
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            stor15 = 2
                                                                            stor0 = 1
}



}
