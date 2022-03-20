contract main {




// =====================  Runtime code  =====================


const balanceOfPool = ext_call.return_data[0]

const fortube = 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672

const bnb = 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb

const max = 1000

const balanceOf = (2 * ext_call.return_data[0])

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const balanceOfWant = ext_call.return_data[0]

const withdrawalMax = 10000

const output = 0x658a109c5900bc6d2357c87549b651670e5b0539


address unirouterAddress;
address fortube_rewardAddress;
uint32 stor2;
address rewardsAddress;
uint256 stor2;
uint32 stor3;
address vaultAddress;
uint256 stor3;
uint256 fee;
uint256 callfee;
uint256 withdrawalFee;
array of uint256 name;
array of struct sub_b1dcffad;

function getName() {
    return name[0 len name.length]
}

function unirouter() {
    return unirouterAddress
}

function fortube_reward() {
    return fortube_rewardAddress
}

function withdrawalFee() {
    return withdrawalFee
}

function rewards() {
    return address(rewardsAddress)
}

function sub_b1dcffad(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1dcffad.length
    return sub_b1dcffad[arg1].field_0
}

function callfee() {
    return callfee
}

function fee() {
    return fee
}

function vault() {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function deposit() {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if withdrawalFee <= 0:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
            else:
                require arg1
                if arg1 * withdrawalFee / arg1 != withdrawalFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 * withdrawalFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdrawUnderlying(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
           value arg1 - ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if withdrawalFee <= 0:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if arg1 * withdrawalFee / arg1 != withdrawalFee:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 * withdrawalFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
}

function harvest() {
    if ext_code.size(msg.sender) > 0:
        revert with 0, '!contract'
    require ext_code.size(fortube_rewardAddress)
    call fortube_rewardAddress.claimReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x658a109c5900bc6d2357c87549b651670e5b0539)
    staticcall 0x658a109c5900bc6d2357c87549b651670e5b0539.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_b1dcffad.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_b1dcffad.length
    else:
        mem[292] = address(sub_b1dcffad.field_0)
        idx = 292
        s = 0
        while (32 * sub_b1dcffad.length) + 292 > idx + 32:
            mem[idx + 32] = sub_b1dcffad[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_b1dcffad.length, mem[292 len 32 * sub_b1dcffad.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            mem[ceil32(return_data.size) + 645 len 4] = 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 617 len 4]
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * callfee / ext_call.return_data[0] != callfee:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, sub_b1dcffad.length)
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * callfee / 1000) >> 32
            mem[ceil32(return_data.size) + 645 len 4] = 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * callfee / 1000) << 224, mem[ceil32(return_data.size) + 617 len 4]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * fee / ext_call.return_data[0] != fee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        Mask(152, 0, this.address) << 96
        if not ext_call.return_data[0]:
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, ext_call.return_data[0] * fee / 1000) >> 32
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * fee / 1000) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            mem[ceil32(return_data.size) + 645 len 4] = 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 617 len 4]
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * callfee / ext_call.return_data[0] != callfee:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, sub_b1dcffad.length)
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, ext_call.return_data[0] * fee / 1000) >> 32
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * fee / 1000) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * callfee / 1000) >> 32
            mem[ceil32(return_data.size) + 645 len 4] = 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * callfee / 1000) << 224, mem[ceil32(return_data.size) + 617 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 585]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, eth.balance(this.address), mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
