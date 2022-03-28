contract main {




// =====================  Runtime code  =====================


#
#  - sub_db091aa3(?)
#  - sub_efd7c703(?)
#
address owner;
address stor1;
mapping of uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of struct sub_1940c0c7;
array of address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function sub_1940c0c7(?) {
    return sub_1940c0c7[address(msg.sender)].field_0, 
           sub_1940c0c7[address(msg.sender)].field_256,
           sub_1940c0c7[address(msg.sender)].field_512,
           sub_1940c0c7[address(msg.sender)].field_768,
           sub_1940c0c7[address(msg.sender)].field_1024,
           sub_1940c0c7[address(msg.sender)].field_1280,
           sub_1940c0c7[address(msg.sender)].field_1536
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_81e85e18(?) {
    return stor4, stor5
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
    emit 0x21a8ae82: block.number, block.timestamp, arg1
    return 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
    emit 0x4f84b102: block.number, block.timestamp, arg1
    return 1
}

function sub_9f03ec8d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Invalid amount to withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c64f2cbb(?) payable {
    if block.timestamp > stor7:
        revert with 0, 'Private sale had been closed.'
    if sub_1940c0c7[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2e576520616c6c6f77206f6e652077616c6c657420666f72206f6e65207472616e73616374696f6e,
                    mem[204 len 24]
    if msg.value < stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x644d696e696d756d206973203120424e4220666f72206f6e65207472616e73616374696f6e,
                    mem[201 len 27]
    if msg.value > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4d6178696d756d20697320313020424e4220666f72206f6e65207472616e73616374696f6e,
                    mem[202 len 26]
    if block.timestamp < stor6:
        revert with 0, 'Token hub is not available now.'
    if stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    78,
                    0x2e596f752061726520696e20626c61636b6c69737420706c6561736520636f6e746163742061646d696e6973747261746f7220666f72206d6f72652064657461696c20696e666f726d6174696f6e,
                    mem[242 len 18]
    if stor5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe44414e474f20746f6b656e7320686164206265656e20646973747269627574656420746f207573657273,
                    mem[207 len 21]
    if not msg.value / 10^18:
        stor10.length++
        stor10[stor10.length] = msg.sender
        sub_1940c0c7[address(msg.sender)].field_0 = msg.sender
        sub_1940c0c7[address(msg.sender)].field_256 = msg.value
        sub_1940c0c7[address(msg.sender)].field_512 = 0
        sub_1940c0c7[address(msg.sender)].field_768 = block.timestamp
        sub_1940c0c7[address(msg.sender)].field_1024 = 10
        sub_1940c0c7[address(msg.sender)].field_1280 = block.timestamp
        sub_1940c0c7[address(msg.sender)].field_1536 = block.timestamp + (1800 * stor8)
        if stor3 < stor3:
            revert with 0, 'SafeMath: addition overflow'
        if stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > stor5:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_code.hash(stor1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor1):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call stor1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[740 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
        emit 0xec77a441: 0, block.number, block.timestamp, msg.sender
    else:
        require msg.value / 10^18
        if msg.value / 10^18 * stor13 / msg.value / 10^18 != stor13:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not msg.value / 10^18 * stor13:
            stor10.length++
            stor10[stor10.length] = msg.sender
            sub_1940c0c7[address(msg.sender)].field_0 = msg.sender
            sub_1940c0c7[address(msg.sender)].field_256 = msg.value
            sub_1940c0c7[address(msg.sender)].field_512 = msg.value / 10^18 * stor13
            sub_1940c0c7[address(msg.sender)].field_768 = block.timestamp
            sub_1940c0c7[address(msg.sender)].field_1024 = 10
            sub_1940c0c7[address(msg.sender)].field_1280 = block.timestamp
            sub_1940c0c7[address(msg.sender)].field_1536 = block.timestamp + (1800 * stor8)
            if stor3 < stor3:
                revert with 0, 'SafeMath: addition overflow'
            if stor4 + (msg.value / 10^18 * stor13) < stor4:
                revert with 0, 'SafeMath: addition overflow'
            stor4 += msg.value / 10^18 * stor13
            if msg.value / 10^18 * stor13 > stor5:
                revert with 0, 'SafeMath: subtraction overflow'
            stor5 += -1 * msg.value / 10^18 * stor13
            if ext_code.hash(stor1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor1):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call stor1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            emit 0xec77a441: 0, block.number, block.timestamp, msg.sender
        else:
            require msg.value / 10^18 * stor13
            if 10 * msg.value / 10^18 * stor13 / msg.value / 10^18 * stor13 != 10:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            stor10.length++
            stor10[stor10.length] = msg.sender
            sub_1940c0c7[address(msg.sender)].field_0 = msg.sender
            sub_1940c0c7[address(msg.sender)].field_256 = msg.value
            sub_1940c0c7[address(msg.sender)].field_512 = msg.value / 10^18 * stor13
            sub_1940c0c7[address(msg.sender)].field_768 = block.timestamp
            sub_1940c0c7[address(msg.sender)].field_1024 = 10
            sub_1940c0c7[address(msg.sender)].field_1280 = block.timestamp
            sub_1940c0c7[address(msg.sender)].field_1536 = block.timestamp + (1800 * stor8)
            if stor3 + (10 * msg.value / 10^18 * stor13 / 100) < stor3:
                revert with 0, 'SafeMath: addition overflow'
            stor3 += 10 * msg.value / 10^18 * stor13 / 100
            if stor4 + (msg.value / 10^18 * stor13) < stor4:
                revert with 0, 'SafeMath: addition overflow'
            stor4 += msg.value / 10^18 * stor13
            if msg.value / 10^18 * stor13 > stor5:
                revert with 0, 'SafeMath: subtraction overflow'
            stor5 += -1 * msg.value / 10^18 * stor13
            if ext_code.hash(stor1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor1):
                revert with 0, 'Address: call to non-contract'
            mem[676 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10 * msg.value / 10^18 * stor13 / 100) >> 32
            call stor1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 10 * msg.value / 10^18 * stor13 / 100) << 224, mem[740 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[708]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 787 len 22]
            emit 0xec77a441: 10 * msg.value / 10^18 * stor13 / 100, block.number, block.timestamp, msg.sender
    return 1
}



}
