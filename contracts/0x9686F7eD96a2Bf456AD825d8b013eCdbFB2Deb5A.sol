contract main {




// =====================  Runtime code  =====================


#
#  - claimReward(uint256 arg1)
#
address owner;
array of address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 maxNumber;
array of uint256 winningNumbers;
array of struct sub_7ec467c2;
array of struct sub_594765c2;
array of struct sub_61f65b32;
uint256 sub_475bd71a;
uint256 sub_00279348;
uint256 sub_54daee77;
address cakeAddress;
address sub_ce913a34Address;
array of struct userInfo;
array of struct sub_aaca3d7d;
array of uint256 stor114890042842712239901449779252505961779492699697426745666163627616209175814173;

function sub_00279348(?) payable {
    return sub_00279348
}

function lastTimestamp() payable {
    return stor5.length
}

function totalAmount() payable {
    return stor4.length
}

function userInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userInfo[arg1].field_0
    return userInfo[arg1][arg2].field_0, 
           address(userInfo[arg1][arg2].field_256),
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280
}

function maxNumber() payable {
    return maxNumber
}

function sub_475bd71a(?) payable {
    return sub_475bd71a
}

function winningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < winningNumbers.length
    return winningNumbers[arg1].field_0
}

function sub_54daee77(?) payable {
    return sub_54daee77
}

function sub_594765c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_594765c2.length
    return sub_594765c2[arg1].field_0, 
           address(sub_594765c2[arg1].field_256),
           sub_594765c2[arg1].field_512,
           sub_594765c2[arg1].field_768,
           sub_594765c2[arg1].field_1024,
           sub_594765c2[arg1].field_1280
}

function historyNumbers(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor18.length
    require arg2 < stor18[arg1]
    return stor[('array', ('param', 'arg1'), ('name', 'stor18', 18)) + arg2]
}

function sub_61f65b32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_61f65b32.length
    return sub_61f65b32[arg1].field_0, 
           address(sub_61f65b32[arg1].field_256),
           sub_61f65b32[arg1].field_512,
           sub_61f65b32[arg1].field_768,
           sub_61f65b32[arg1].field_1024,
           sub_61f65b32[arg1].field_1280
}

function issueIndex() payable {
    return stor2.length
}

function sub_7ec467c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7ec467c2.length
    return sub_7ec467c2[arg1].field_0, 
           address(sub_7ec467c2[arg1].field_256),
           sub_7ec467c2[arg1].field_512,
           sub_7ec467c2[arg1].field_768,
           sub_7ec467c2[arg1].field_1024,
           sub_7ec467c2[arg1].field_1280
}

function owner() payable {
    return owner
}

function sub_aaca3d7d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aaca3d7d.length
    return sub_aaca3d7d[arg1].field_0, 
           address(sub_aaca3d7d[arg1].field_256),
           sub_aaca3d7d[arg1].field_512,
           sub_aaca3d7d[arg1].field_768,
           sub_aaca3d7d[arg1].field_1024,
           sub_aaca3d7d[arg1].field_1280
}

function sub_ce913a34(?) payable {
    return sub_ce913a34Address
}

function totalAddresses() payable {
    return stor3.length
}

function devaddr() payable {
    return stor1.length
}

function cake() payable {
    return cakeAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length != msg.sender:
        revert with 0, 'dev: wut?'
    stor1.length = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reset() payable {
    stor5.length = block.timestamp
    idx = 0
    while idx < sub_aaca3d7d.length:
        mem[32] = 21
        userInfo[address(stor22[idx].field_256)].field_0 = 0
        mem[0] = sha3(address(sub_aaca3d7d[idx].field_256), 21)
        s = sha3(sha3(address(sub_aaca3d7d[idx].field_256), 21))
        while sha3(sha3(address(sub_aaca3d7d[idx].field_256), 21)) + (6 * userInfo[address(stor22[idx].field_256)].field_0) > s:
            stor[s] = 0
            stor1[s] = 0
            stor2[s] = 0
            stor3[s] = 0
            stor4[s] = 0
            stor5[s] = 0
            s = s + 6
            continue 
        idx = idx + 1
        continue 
    sub_aaca3d7d.length = 0
    idx = 0
    while 6 * sub_aaca3d7d.length > idx:
        sub_aaca3d7d[idx].field_0 = 0
        address(sub_aaca3d7d[idx].field_256) = 0
        sub_aaca3d7d[idx].field_512 = 0
        sub_aaca3d7d[idx].field_768 = 0
        sub_aaca3d7d[idx].field_1024 = 0
        sub_aaca3d7d[idx].field_1280 = 0
        idx = idx + 6
        continue 
    sub_7ec467c2.length = 0
    idx = 0
    while 6 * sub_7ec467c2.length > idx:
        sub_7ec467c2[idx].field_0 = 0
        address(sub_7ec467c2[idx].field_256) = 0
        sub_7ec467c2[idx].field_512 = 0
        sub_7ec467c2[idx].field_768 = 0
        sub_7ec467c2[idx].field_1024 = 0
        sub_7ec467c2[idx].field_1280 = 0
        idx = idx + 6
        continue 
    sub_594765c2.length = 0
    idx = 0
    while 6 * sub_594765c2.length > idx:
        sub_594765c2[idx].field_0 = 0
        address(sub_594765c2[idx].field_256) = 0
        sub_594765c2[idx].field_512 = 0
        sub_594765c2[idx].field_768 = 0
        sub_594765c2[idx].field_1024 = 0
        sub_594765c2[idx].field_1280 = 0
        idx = idx + 6
        continue 
    sub_61f65b32.length = 0
    idx = 0
    while 6 * sub_61f65b32.length > idx:
        sub_61f65b32[idx].field_0 = 0
        address(sub_61f65b32[idx].field_256) = 0
        sub_61f65b32[idx].field_512 = 0
        sub_61f65b32[idx].field_768 = 0
        sub_61f65b32[idx].field_1024 = 0
        sub_61f65b32[idx].field_1280 = 0
        idx = idx + 6
        continue 
    stor2.length++
}

function sub_e6320a0a(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 36).length != 4:
        revert with 0, 'wrong length'
    idx = 0
    while idx < 4:
        require idx < ('cd', 36).length
        if mem[(32 * idx) + 128] > maxNumber:
            revert with 0, 'exceed the maximum'
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 164] = msg.sender
    mem[(32 * ('cd', 36).length) + 196] = this.address
    mem[(32 * ('cd', 36).length) + 228] = cd[4]
    mem[(32 * ('cd', 36).length) + 128] = 100
    mem[(32 * ('cd', 36).length) + 160 len 4] = unknown_0x23b872dd(?????)
    if not ext_code.size(cakeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * ('cd', 36).length) + 324 len 128] = 0, msg.sender, address(this.address), cd[4], 0
    call cakeAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), cd[4], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), cd[4], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 36).length:
                revert with memory
                  from 128
                   len ('cd', 36).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 36).length:
            require ('cd', 36).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(32 * ('cd', 36).length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + 356] == bool(mem[(32 * ('cd', 36).length) + 356])
            if not mem[(32 * ('cd', 36).length) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_ce913a34Address)
    call sub_ce913a34Address.0xc23e5494 with:
         gas gas_remaining wei
        args msg.sender, Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length]), cd[4], stor2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require 1 < ('cd', 36).length
    require 2 < ('cd', 36).length
    require 3 < ('cd', 36).length
    sub_aaca3d7d.length++
    sub_aaca3d7d[sub_aaca3d7d.length].field_0 = cd[4]
    address(sub_aaca3d7d[sub_aaca3d7d.length].field_256) = msg.sender
    sub_aaca3d7d[sub_aaca3d7d.length].field_512 = mem[128]
    sub_aaca3d7d[sub_aaca3d7d.length].field_768 = mem[160]
    sub_aaca3d7d[sub_aaca3d7d.length].field_1024 = mem[192]
    sub_aaca3d7d[sub_aaca3d7d.length].field_1280 = mem[224]
    if not userInfo[msg.sender].field_0:
        stor3.length++
    require 0 < ('cd', 36).length
    require 1 < ('cd', 36).length
    require 2 < ('cd', 36).length
    require 3 < ('cd', 36).length
    userInfo[msg.sender].field_0++
    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = cd[4]
    address(userInfo[msg.sender][userInfo[msg.sender].field_0].field_256) = msg.sender
    userInfo[msg.sender][userInfo[msg.sender].field_0].field_512 = mem[128]
    userInfo[msg.sender][userInfo[msg.sender].field_0].field_768 = mem[160]
    userInfo[msg.sender][userInfo[msg.sender].field_0].field_1024 = mem[192]
    userInfo[msg.sender][userInfo[msg.sender].field_0].field_1280 = mem[224]
    stor4.length += cd[4]
    stor5.length = block.timestamp
    emit 0xee7c70b3: cd[4], Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length]), msg.sender
}

function drawing() payable {
    if stor1.length != msg.sender:
        revert with 0, 'dev: wut?'
    winningNumbers.length++
    storFE01[stor11.length] = (sha3(block.hash(block.number - 1), stor3.length) % maxNumber) + 1
    winningNumbers.length++
    storFE01[stor11.length] = (sha3(block.hash(block.number - 1), stor4.length) % maxNumber) + 1
    winningNumbers.length++
    storFE01[stor11.length] = (sha3(block.hash(block.number - 1), stor5.length) % maxNumber) + 1
    winningNumbers.length++
    storFE01[stor11.length] = (sha3(block.hash(block.number - 1), block.difficulty) % maxNumber) + 1
    idx = 0
    while idx < sub_aaca3d7d.length:
        require 0 < winningNumbers.length
        require idx < sub_aaca3d7d.length
        require 1 < winningNumbers.length
        require idx < sub_aaca3d7d.length
        require 2 < winningNumbers.length
        require idx < sub_aaca3d7d.length
        require 3 < winningNumbers.length
        require idx < sub_aaca3d7d.length
        if sub_aaca3d7d[idx].field_512 != uint256(winningNumbers.field_0):
            if sub_aaca3d7d[idx].field_768 != uint256(winningNumbers.field_256):
                mem[0] = 22
                if sub_aaca3d7d[idx].field_1024 != uint256(winningNumbers.field_512):
                else:
                    if sub_aaca3d7d[idx].field_1280 == uint256(winningNumbers.field_768):
                        require idx < sub_aaca3d7d.length
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
            else:
                if sub_aaca3d7d[idx].field_1024 == uint256(winningNumbers.field_512):
                    require idx < sub_aaca3d7d.length
                    if sub_aaca3d7d[idx].field_1280 != uint256(winningNumbers.field_768):
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
                    else:
                        sub_594765c2.length++
                        sub_594765c2[sub_594765c2.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_594765c2[sub_594765c2.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_594765c2[sub_594765c2.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_594765c2[sub_594765c2.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_594765c2[sub_594765c2.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_594765c2[sub_594765c2.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_00279348 += sub_aaca3d7d[idx].field_0
                else:
                    mem[0] = 22
                    if sub_aaca3d7d[idx].field_1280 == uint256(winningNumbers.field_768):
                        require idx < sub_aaca3d7d.length
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
        else:
            if sub_aaca3d7d[idx].field_768 == uint256(winningNumbers.field_256):
                require idx < sub_aaca3d7d.length
                if sub_aaca3d7d[idx].field_1024 != uint256(winningNumbers.field_512):
                    if sub_aaca3d7d[idx].field_1280 != uint256(winningNumbers.field_768):
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
                    else:
                        sub_594765c2.length++
                        sub_594765c2[sub_594765c2.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_594765c2[sub_594765c2.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_594765c2[sub_594765c2.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_594765c2[sub_594765c2.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_594765c2[sub_594765c2.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_594765c2[sub_594765c2.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_00279348 += sub_aaca3d7d[idx].field_0
                else:
                    if sub_aaca3d7d[idx].field_1280 != uint256(winningNumbers.field_768):
                        sub_594765c2.length++
                        sub_594765c2[sub_594765c2.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_594765c2[sub_594765c2.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_594765c2[sub_594765c2.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_594765c2[sub_594765c2.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_594765c2[sub_594765c2.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_594765c2[sub_594765c2.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_00279348 += sub_aaca3d7d[idx].field_0
                    else:
                        sub_7ec467c2.length++
                        sub_7ec467c2[sub_7ec467c2.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_7ec467c2[sub_7ec467c2.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_7ec467c2[sub_7ec467c2.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_7ec467c2[sub_7ec467c2.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_7ec467c2[sub_7ec467c2.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_7ec467c2[sub_7ec467c2.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_475bd71a += sub_aaca3d7d[idx].field_0
            else:
                if sub_aaca3d7d[idx].field_1024 == uint256(winningNumbers.field_512):
                    require idx < sub_aaca3d7d.length
                    if sub_aaca3d7d[idx].field_1280 != uint256(winningNumbers.field_768):
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
                    else:
                        sub_594765c2.length++
                        sub_594765c2[sub_594765c2.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_594765c2[sub_594765c2.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_594765c2[sub_594765c2.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_594765c2[sub_594765c2.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_594765c2[sub_594765c2.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_594765c2[sub_594765c2.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_00279348 += sub_aaca3d7d[idx].field_0
                else:
                    mem[0] = 22
                    if sub_aaca3d7d[idx].field_1280 == uint256(winningNumbers.field_768):
                        require idx < sub_aaca3d7d.length
                        sub_61f65b32.length++
                        sub_61f65b32[sub_61f65b32.length].field_0 = sub_aaca3d7d[idx].field_0
                        address(sub_61f65b32[sub_61f65b32.length].field_256) = address(sub_aaca3d7d[idx].field_256)
                        sub_61f65b32[sub_61f65b32.length].field_512 = sub_aaca3d7d[idx].field_512
                        sub_61f65b32[sub_61f65b32.length].field_768 = sub_aaca3d7d[idx].field_768
                        sub_61f65b32[sub_61f65b32.length].field_1024 = sub_aaca3d7d[idx].field_1024
                        sub_61f65b32[sub_61f65b32.length].field_1280 = sub_aaca3d7d[idx].field_1280
                        mem[0] = 22
                        sub_54daee77 += sub_aaca3d7d[idx].field_0
        idx = idx + 1
        continue 
    stor18.length++
    stor18[stor18.length] = winningNumbers.length
    if not winningNumbers.length:
        idx = 0
        while stor18[stor18.length] > idx:
            stor18[stor18.length + idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while winningNumbers.length > idx:
            stor18[stor18.length + s] = winningNumbers[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = winningNumbers.length
        while stor18[stor18.length] > idx:
            stor18[stor18.length + idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = 576
    while idx < winningNumbers.length:
        mem[t] = winningNumbers[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x759a5f74: Array(len=winningNumbers.length, data=mem[576 len 32 * winningNumbers.length]), sub_7ec467c2.length
    return 0
}



}
