contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
address teamWalletAddress;
address tokenAddress;
uint256 comm;
uint256 min;
uint256 max;
uint256 sub_9bb69817;
uint256 sub_949faba9;
uint256 sub_b74cb2db;
uint256 sub_91671b1f;
uint256 sub_35342f4c;
uint256 sub_3a9f597a;
uint256 sub_d9ba624b;
array of uint256 userStakes;
mapping of struct sub_34c76397;
mapping of struct sub_8ba3b64a;
uint256 sub_64065c96;
uint256 sub_bfde33cd;

function sub_34c76397(?) {
    require calldata.size - 4 >= 32
    return sub_34c76397[arg1].field_0, 
           sub_34c76397[arg1].field_256,
           sub_34c76397[arg1].field_512,
           sub_34c76397[arg1].field_768,
           sub_34c76397[arg1].field_1024,
           bool(sub_34c76397[arg1].field_1032)
}

function sub_35342f4c(?) {
    return sub_35342f4c
}

function sub_3a9f597a(?) {
    return sub_3a9f597a
}

function comm() {
    return comm
}

function teamWallet() {
    return teamWalletAddress
}

function sub_64065c96(?) {
    return sub_64065c96
}

function max() {
    return max
}

function oracle() {
    return oracleAddress
}

function sub_8ba3b64a(?) {
    require calldata.size - 4 >= 32
    return sub_8ba3b64a[arg1].field_0, sub_8ba3b64a[arg1].field_256, sub_8ba3b64a[arg1].field_512
}

function owner() {
    return owner
}

function sub_91671b1f(?) {
    return sub_91671b1f
}

function sub_949faba9(?) {
    return sub_949faba9
}

function sub_9bb69817(?) {
    return sub_9bb69817
}

function userStakes(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userStakes[arg1]
    return userStakes[arg1][arg2]
}

function sub_b74cb2db(?) {
    return sub_b74cb2db
}

function sub_bfde33cd(?) {
    return sub_bfde33cd
}

function sub_d9ba624b(?) {
    return sub_d9ba624b
}

function min() {
    return min
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
}

function setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function sub_32050fa5(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    min = arg1
    max = arg2
    sub_9bb69817 = arg3
    sub_949faba9 = arg4
}

function setOracleFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 10^17
    require arg1 > 10^15
    sub_35342f4c = arg1
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call teamWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_e2c8934b(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if oracleAddress != msg.sender:
        revert with 0, 'Not the oracle '
    if sub_34c76397[arg1].field_1024:
        revert with 0, 'Already Settled'
    sub_34c76397[arg1].field_1024 = uint8(arg2)
    if 2 == uint8(arg2):
        sub_34c76397[arg1].field_1032 = 1
    if sub_91671b1f == -1:
        revert with 0, 17
    sub_91671b1f++
    if sub_bfde33cd == -1:
        revert with 0, 17
    sub_bfde33cd++
    sub_8ba3b64a[stor18].field_0 = arg1
    sub_8ba3b64a[stor18].field_512 = uint8(arg2)
    sub_8ba3b64a[stor18].field_256 = block.timestamp
}

function emergencyWithdrawal() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_34c76397[arg1].field_0 != msg.sender:
        revert with 0, 'Not staker'
    if sub_34c76397[arg1].field_1032:
        revert with 0, 'Already Settled'
    if not sub_34c76397[arg1].field_1024:
        revert with 0, 'Still Processing'
    sub_34c76397[arg1].field_1032 = 1
    if sub_34c76397[arg1].field_768:
        if sub_34c76397[arg1].field_768 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 2 * sub_34c76397[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_34c76397[arg1].field_512:
        if sub_34c76397[arg1].field_512 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        call msg.sender with:
           value 2 * sub_34c76397[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_35342f4c != msg.value:
        revert with 0, 'Need to pay oracle fee'
    if arg1 < min:
        revert with 0, 'Out of Range'
    if arg1 > max:
        revert with 0, 'Out of Range'
    call oracleAddress with:
       value sub_35342f4c wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_64065c96 == -1:
        revert with 0, 17
    sub_64065c96++
    if False and comm > 0:
        revert with 0, 17
    if arg1 and comm > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * comm / 1000:
        revert with 0, 17
    if sub_3a9f597a > !(arg1 * comm / 1000):
        revert with 0, 17
    sub_3a9f597a += arg1 * comm / 1000
    if sub_d9ba624b > -1:
        revert with 0, 17
    if arg1 * comm / 1000:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args teamWalletAddress, arg1 * comm / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_34c76397[stor17].field_0 = msg.sender or Mask(96, 160, sub_34c76397[stor17].field_0)
    sub_34c76397[stor17].field_768 = arg1 - (arg1 * comm / 1000)
    sub_34c76397[stor17].field_256 = block.timestamp
    userStakes[msg.sender]++
    userStakes[msg.sender][userStakes[msg.sender]] = sub_64065c96
    return sub_64065c96
}

function stakeBNB() payable {
    if sub_9bb69817 > !sub_35342f4c:
        revert with 0, 17
    if msg.value < sub_9bb69817 + sub_35342f4c:
        revert with 0, 'Out of Range'
    if sub_949faba9 > !sub_35342f4c:
        revert with 0, 17
    if msg.value > sub_949faba9 + sub_35342f4c:
        revert with 0, 'Out of Range'
    call oracleAddress with:
       value sub_35342f4c wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_64065c96 == -1:
        revert with 0, 17
    sub_64065c96++
    if msg.value < sub_35342f4c:
        revert with 0, 17
    if msg.value - sub_35342f4c and comm > -1 / msg.value - sub_35342f4c:
        revert with 0, 17
    if False and comm > 0:
        revert with 0, 17
    if msg.value - sub_35342f4c < (msg.value * comm) - (sub_35342f4c * comm) / 1000:
        revert with 0, 17
    if sub_3a9f597a > -1:
        revert with 0, 17
    if sub_d9ba624b > !((msg.value * comm) - (sub_35342f4c * comm) / 1000):
        revert with 0, 17
    sub_d9ba624b += (msg.value * comm) - (sub_35342f4c * comm) / 1000
    if (msg.value * comm) - (sub_35342f4c * comm) / 1000:
        call teamWalletAddress with:
           value (msg.value * comm) - (sub_35342f4c * comm) / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_34c76397[stor17].field_0 = msg.sender or Mask(96, 160, sub_34c76397[stor17].field_0)
    sub_34c76397[stor17].field_512 = msg.value - sub_35342f4c - ((msg.value * comm) - (sub_35342f4c * comm) / 1000)
    sub_34c76397[stor17].field_256 = block.timestamp
    userStakes[msg.sender]++
    userStakes[msg.sender][userStakes[msg.sender]] = sub_64065c96
    return sub_64065c96
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7dc0d1d0(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x3a9f597a(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x64065c96(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x64065c96(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_64065c96
                if unknown_0x6ac5db19(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return max
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require unknown_0x7adbf973(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    oracleAddress = address(arg1)
            else:
                if unknown_0x3a9f597a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3a9f597a
                if unknown_0x43afdaaf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return comm
                if unknown_0x59927044(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return teamWalletAddress
                require unknown_0x5b0a3843(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args teamWalletAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0x25d5971f(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x25d5971f(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x32050fa5(?????):
                    if unknown_0x34c76397(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return sub_34c76397[arg1].field_0, 
                               sub_34c76397[arg1].field_256,
                               sub_34c76397[arg1].field_512,
                               sub_34c76397[arg1].field_768,
                               sub_34c76397[arg1].field_1024,
                               bool(sub_34c76397[arg1].field_1032)
                    require unknown_0x35342f4c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_35342f4c
                require not msg.value
                require calldata.size - 4 >= 128
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                min = arg1
                max = arg2
                sub_9bb69817 = arg3
                sub_949faba9 = arg4
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                if sub_34c76397[arg1].field_0 != msg.sender:
                    revert with 0, 'Not staker'
                if sub_34c76397[arg1].field_1032:
                    revert with 0, 'Already Settled'
                if not sub_34c76397[arg1].field_1024:
                    revert with 0, 'Still Processing'
                sub_34c76397[arg1].field_1032 = 1
                if sub_34c76397[arg1].field_768:
                    if sub_34c76397[arg1].field_768 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * sub_34c76397[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_34c76397[arg1].field_512:
                    if sub_34c76397[arg1].field_512 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    call msg.sender with:
                       value 2 * sub_34c76397[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != stakeBNB():
            if unknown_0x144fa6d7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                tokenAddress = address(arg1)
            else:
                if unknown_0x1525ff7d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    teamWalletAddress = address(arg1)
                else:
                    require unknown_0x1d111d13(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call teamWalletAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if sub_9bb69817 > !sub_35342f4c:
            revert with 0, 17
        if msg.value < sub_9bb69817 + sub_35342f4c:
            revert with 0, 'Out of Range'
        if sub_949faba9 > !sub_35342f4c:
            revert with 0, 17
        if msg.value > sub_949faba9 + sub_35342f4c:
            revert with 0, 'Out of Range'
        call oracleAddress with:
           value sub_35342f4c wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_64065c96 == -1:
            revert with 0, 17
        sub_64065c96++
        if msg.value < sub_35342f4c:
            revert with 0, 17
        if msg.value - sub_35342f4c and comm > -1 / msg.value - sub_35342f4c:
            revert with 0, 17
        if False and comm > 0:
            revert with 0, 17
        if msg.value - sub_35342f4c < (msg.value * comm) - (sub_35342f4c * comm) / 1000:
            revert with 0, 17
        if sub_3a9f597a > -1:
            revert with 0, 17
        if sub_d9ba624b > !((msg.value * comm) - (sub_35342f4c * comm) / 1000):
            revert with 0, 17
        sub_d9ba624b += (msg.value * comm) - (sub_35342f4c * comm) / 1000
        if (msg.value * comm) - (sub_35342f4c * comm) / 1000:
            call teamWalletAddress with:
               value (msg.value * comm) - (sub_35342f4c * comm) / 1000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        sub_34c76397[stor17].field_0 = msg.sender or Mask(96, 160, sub_34c76397[stor17].field_0)
        sub_34c76397[stor17].field_512 = msg.value - sub_35342f4c - ((msg.value * comm) - (sub_35342f4c * comm) / 1000)
    else:
        if unknown_0xb6d9ef60(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe2c8934b(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xb6d9ef60(?????):
                    if unknown_0xb74cb2db(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b74cb2db
                    if unknown_0xbfde33cd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_bfde33cd
                    require unknown_0xd9ba624b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_d9ba624b
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require arg1 < 10^17
                require arg1 > 10^15
                sub_35342f4c = arg1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xe2c8934b(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf8897945(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return min
                        require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return tokenAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == uint8(arg2)
                    if oracleAddress != msg.sender:
                        revert with 0, 'Not the oracle '
                    if sub_34c76397[arg1].field_1024:
                        revert with 0, 'Already Settled'
                    sub_34c76397[arg1].field_1024 = uint8(arg2)
                    if 2 == uint8(arg2):
                        sub_34c76397[arg1].field_1032 = 1
                    if sub_91671b1f == -1:
                        revert with 0, 17
                    sub_91671b1f++
                    if sub_bfde33cd == -1:
                        revert with 0, 17
                    sub_bfde33cd++
                    sub_8ba3b64a[stor18].field_0 = arg1
                    sub_8ba3b64a[stor18].field_512 = uint8(arg2)
                    sub_8ba3b64a[stor18].field_256 = block.timestamp
        if unknown_0x949faba9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x7dc0d1d0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return oracleAddress
            if unknown_0x8ba3b64a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return sub_8ba3b64a[arg1].field_0, sub_8ba3b64a[arg1].field_256, sub_8ba3b64a[arg1].field_512
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0x91671b1f(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return sub_91671b1f
        if unknown_0x949faba9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_949faba9
        if unknown_0x9bb69817(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_9bb69817
        if uint32(call.func_hash) >> 224 != unknown_0xa694fc3a(?????):
            require unknown_0xb5d5b5fa(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 < userStakes[arg1]
            return userStakes[arg1][arg2]
        require calldata.size - 4 >= 32
        if sub_35342f4c != msg.value:
            revert with 0, 'Need to pay oracle fee'
        if arg1 < min:
            revert with 0, 'Out of Range'
        if arg1 > max:
            revert with 0, 'Out of Range'
        call oracleAddress with:
           value sub_35342f4c wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_64065c96 == -1:
            revert with 0, 17
        sub_64065c96++
        if False and comm > 0:
            revert with 0, 17
        if arg1 and comm > -1 / arg1:
            revert with 0, 17
        if arg1 < arg1 * comm / 1000:
            revert with 0, 17
        if sub_3a9f597a > !(arg1 * comm / 1000):
            revert with 0, 17
        sub_3a9f597a += arg1 * comm / 1000
        if sub_d9ba624b > -1:
            revert with 0, 17
        if arg1 * comm / 1000:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args teamWalletAddress, arg1 * comm / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_34c76397[stor17].field_0 = msg.sender or Mask(96, 160, sub_34c76397[stor17].field_0)
        sub_34c76397[stor17].field_768 = arg1 - (arg1 * comm / 1000)
    sub_34c76397[stor17].field_256 = block.timestamp
    userStakes[msg.sender]++
    userStakes[msg.sender][userStakes[msg.sender]] = sub_64065c96
    return sub_64065c96
}



}
