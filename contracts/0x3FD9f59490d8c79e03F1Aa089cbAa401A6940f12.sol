contract main {




// =====================  Runtime code  =====================


const ORACLE_ROLE = sha3(Mask(88, 168, 'ORACLE_ROLE') >> 168)

const DELETE_PROTECTION_PERIOD = 370285

const DEFAULT_ADMIN_ROLE = 0

const DELEGATE_ROLE = sha3(Mask(104, 152, 'DELEGATE_ROLE') >> 152)


array of struct roleAdmin;
address _tokenAddress;
uint256 _earliestDelete;
uint256 _pausedSinceBlock;
uint256 _fee;
uint256 sub_d83222ec;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 sub_df186aea;
uint8 sub_993240a3;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function _earliestDelete() {
    return _earliestDelete
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_993240a3(?) {
    require sub_993240a3 <= 1
    return sub_993240a3
}

function _fee() {
    return _fee
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_d83222ec(?) {
    return sub_d83222ec
}

function sub_df186aea(?) {
    return sub_df186aea
}

function _token() {
    return _tokenAddress
}

function _pausedSinceBlock() {
    return _pausedSinceBlock
}

function deleteContract(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.number > arg2:
        revert with 0, 'Transaction expired'
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an administrator'
    if _earliestDelete < block.number:
        revert with 0, 'Earliest delete not reached'
    require sub_993240a3 <= 1
    if not sub_993240a3:
        require ext_code.size(_tokenAddress)
        staticcall _tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit 0x41dbff2a 
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_3604bc64(?) {
    require calldata.size - 4 >= 128
    if block.number > arg4:
        revert with 0, 'Transaction expired'
    if not roleAdmin['ORACLE_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an oracle'
    stor6 = arg1
    stor7 = arg2
    stor8 = arg3
    sub_df186aea = block.number
    emit 0x7d9dec84: block.number
}

function setFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.number > arg2:
        revert with 0, 'Transaction expired'
    if not roleAdmin[1][address(msg.sender)].field_0:
        if not roleAdmin['DELEGATE_ROLE'][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7443616c6c6572206973206e656974686572206f776e6572206e6f722064656c65676174,
                        mem[200 len 28]
    _fee = arg1
    emit FeeUpdated(arg1);
}

function pauseSince(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.number > arg2:
        revert with 0, 'Transaction expired'
    if not roleAdmin[1][address(msg.sender)].field_0:
        if not roleAdmin['DELEGATE_ROLE'][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7443616c6c6572206973206e656974686572206f776e6572206e6f722064656c65676174,
                        mem[200 len 28]
    if arg1 < block.number:
        _pausedSinceBlock = block.number
        emit Pause(block.number);
    else:
        _pausedSinceBlock = arg1
        emit Pause(arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_82662699(?) payable {
    require sub_993240a3 <= 1
    if sub_993240a3 == 1:
        if _fee != msg.value:
            if msg.value <= _fee:
                revert with 0, 'Insuf. ETH amount sent by caller'
            if _fee > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            call msg.sender with:
               value msg.value - _fee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require sub_993240a3 <= 1
        if sub_993240a3:
            revert with 0, 'Unexpected contract fee currency'
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _fee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Insuf. FET allow. on caller addr'
    if _fee + sub_d83222ec < sub_d83222ec:
        revert with 0, 'SafeMath: addition overflow'
    sub_d83222ec += _fee
    return stor6, stor7, stor8, sub_df186aea
}

function sub_323f4501(?) {
    require calldata.size - 4 >= 64
    if block.number > arg2:
        revert with 0, 'Transaction expired'
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an administrator'
    if sub_d83222ec:
        if not arg1:
            revert with 0, 'Target is zero address'
        require sub_993240a3 <= 1
        if sub_993240a3 == 1:
            call arg1 with:
               value sub_d83222ec wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_993240a3 <= 1
            if sub_993240a3:
                revert with 0, 'Unexpected contract fee currency'
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_d83222ec
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Insuff. FET funds on contr. addr'
        emit 0xe6646aed: address(arg1), sub_d83222ec
        sub_d83222ec = 0
}

function withdrawExcessTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.number > arg2:
        revert with 0, 'Transaction expired'
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an administrator'
    require sub_993240a3 <= 1
    if sub_993240a3 == 1:
        if sub_d83222ec > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'Target is zero address'
        require sub_993240a3 <= 1
        if sub_993240a3 == 1:
            call arg1 with:
               value eth.balance(this.address) - sub_d83222ec wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_993240a3 <= 1
            if sub_993240a3:
                revert with 0, 'Unexpected contract fee currency'
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), eth.balance(this.address) - sub_d83222ec
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Insuff. FET funds on contr. addr'
        emit ExcessTokenWithdrawal(address(arg1), eth.balance(this.address) - sub_d83222ec);
    else:
        require sub_993240a3 <= 1
        if sub_993240a3:
            if sub_d83222ec > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'Target is zero address'
            require sub_993240a3 <= 1
            if sub_993240a3 == 1:
                call arg1 with:
                   value -sub_d83222ec wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require sub_993240a3 <= 1
                if sub_993240a3:
                    revert with 0, 'Unexpected contract fee currency'
                require ext_code.size(_tokenAddress)
                call _tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), -sub_d83222ec
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Insuff. FET funds on contr. addr'
            emit ExcessTokenWithdrawal(address(arg1), -sub_d83222ec);
        else:
            require ext_code.size(_tokenAddress)
            staticcall _tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_d83222ec > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'Target is zero address'
            require sub_993240a3 <= 1
            if sub_993240a3 == 1:
                call arg1 with:
                   value ext_call.return_data[0] - sub_d83222ec wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require sub_993240a3 <= 1
                if sub_993240a3:
                    revert with 0, 'Unexpected contract fee currency'
                require ext_code.size(_tokenAddress)
                call _tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] - sub_d83222ec
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Insuff. FET funds on contr. addr'
            emit ExcessTokenWithdrawal(address(arg1), ext_call.return_data[0] - sub_d83222ec);
}



}
